ProjectZero::Application.config.middleware.use ExceptionNotifier,
  :email_prefix => "[project_zero] ",
  :sender_address => %{"notifier" <exception_notification@panter.ch>},
  :exception_recipients => ["qeycclanad@mailinator.com" ]
