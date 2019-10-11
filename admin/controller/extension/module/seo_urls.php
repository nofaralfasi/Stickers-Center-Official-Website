<?php
/**
 * @total-module	Seo Friendly Urls
 * @author-name 	◘ Dotbox Creative
 * @copyright		Copyright (C) 2015 ◘ Dotbox Creative www.dotbox.eu
 */
class ControllerExtensionModuleSeoUrls extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->load->language('extension/module/seo_urls');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
		$this->load->model('extension/module/seo_urls');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('seo_urls', $this->request->post);		
			
			/// CRUCIAL	
			foreach ($this->request->post['route'] as $route) {
				$seo_url_route = 'route='.trim($route['route']);
				$seo_url_url = trim($route['url']);	
				$this->db->query("INSERT INTO ". DB_PREFIX ."seo_url SET store_id = 0, language_id = 1, query = '". $this->db->escape($seo_url_route) ."', keyword = '". $this->db->escape($seo_url_url) ."'");
			}	
			///// 

			$this->session->data['success'] = $this->language->get('text_success');
			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
		}

		$language_info = array(
		'heading_title', 'button_save',	'button_cancel', 'button_delete', 'tab_general', 'tab_info', 'entry_status', 'entry_des', 'entry_url', 'entry_route', 'text_edit', 'text_enabled', 'text_disabled','button_add','entry_examples','entry_examples_title'
		);

		foreach ($language_info as $language) {
			$data[$language] = $this->language->get($language); 
		}

		$data['user_token'] = $this->session->data['user_token'];
    
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
 		if (isset($this->error['folder'])) {
			$data['error_folder'] = $this->error['folder'];
		} else {
			$data['error_folder'] = '';
		}    
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/seo_urls', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['action'] = $this->url->link('extension/module/seo_urls', 'user_token=' . $this->session->data['user_token'], true);
		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);
		$data['dotbox'] = $this->model_extension_module_seo_urls->getplist();
		$seo_urls_db = $this->db->query("SELECT * FROM ". DB_PREFIX ."seo_url WHERE query LIKE 'route=%'");
		
		$data['seo_urls'] = array();

		foreach ($seo_urls_db->rows as $seo_url) {
			$url_route = explode('route=',$seo_url['query']);

			if (isset($url_route[1])) {
				$url_route = $url_route[1];
			} else {
				$url_route = $url_route[0];
			}

			$url_delete = '&ulr_id=' . $seo_url['seo_url_id'];
			$url_delete = $this->url->link('extension/module/seo_urls/delete', 'user_token=' . $this->session->data['user_token'] . $url_delete, 'SSL');

			$data['seo_urls'][] = array(
					'route' => $url_route,
					'keyword' => $seo_url['keyword'],
					'delete' => $url_delete
				);
		}

		// RENDER
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/seo_urls', $data));
	}

	public function delete() {
		$this->load->language('extension/module/seo_urls');
		if (isset($this->request->get['ulr_id']) && $this->validateDelete()) {
			$query = $this->db->query("DELETE FROM " . DB_PREFIX . "seo_url WHERE seo_url_id = '" . (int)$this->request->get['ulr_id'] . "'");
			$this->session->data['success'] = $this->language->get('text_success_delete');
			$this->response->redirect($this->url->link('extension/module/seo_urls', 'user_token=' . $this->session->data['user_token'], 'SSL'));
		}
		$this->index();
	}

	/* OLD 
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/seo_urls')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
	*/

	private function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/seo_urls')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		foreach ($this->request->post['route'] as $route) {
			if (isset($route['route'])) {	
				if (empty($route['route'])) {
				$this->error['warning'] = $this->language->get('error_url_route');
				}
			}
			if (isset($route['url'])) { 
				if (empty($route['url'])) {
				$this->error['warning'] = $this->language->get('error_url_route');
				}
			}
			if (isset($route['route'])) {
				$query = $this->db->query("SELECT * FROM ".DB_PREFIX."seo_url WHERE query = 'route=".$this->db->escape($route['route'])."'");
				if($query->num_rows) {
					$this->error['warning'] = $this->language->get('error_route');
				}
			}
			if (isset($route['url'])) {
				$query = $this->db->query("SELECT * FROM ".DB_PREFIX."seo_url WHERE query = 'keyword=".$this->db->escape($route['url'])."'");
				if($query->num_rows) {
					$this->error['warning'] = $this->language->get('error_keyword');
				}
			}
		}
		return !$this->error;
	}

	private function validateDelete() {
		if (!$this->user->hasPermission('modify', 'extension/module/seo_urls')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}
}
?>