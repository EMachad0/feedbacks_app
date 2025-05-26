class FeedbackType < EnumerateIt::Base
  associate_values(
    :verified,
    :reset,
    :account_takeover,
    :identity_fraud
  )
end
