class FeedbackType < EnumerateIt::Base
  associate_values(
    verified: "verified",
    reset: "reset",
    account_takeover: "account_takeover",
    identity_fraud: "identity_fraud"
  )

  sort_by :_key
end
