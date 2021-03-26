from django.test import LiveServerTestCase
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver import FirefoxOptions

class EmailTest(LiveServerTestCase):
	def setUp(self):
		opts = FirefoxOptions()
		opts.add_argument("--headless")
		self.selenium = webdriver.Firefox(service_log_path = "./geckodriver.log",options=opts)
		super(EmailTest,self).setUp()
	
	def tearDown(self):
		self.selenium.quit()
		super(EmailTest,self).tearDown()

	def test_email(self):
		selenium = self.selenium
		selenium.get("http://localhost:8000")
		email_input = selenium.find_element_by_id("email_input")
		email_input.send_keys("2017.ayesha.gulrajani@ves.ac.in")
		selenium.find_element_by_id("email_submit").click()
		
