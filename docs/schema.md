
## DB Schema

### Static pages

#### users
  - email
  - account_type
  - is_admin
  - devise fields

####  posts
 - user_id
 - title
 - body
 - image

#### events
  - user_id - creator
  - title
  - description
  - start
  - end

#### attendance_confirmations
  - user_id - attendee
  - event_id
  - email_sent
  - confirmed

#### campaigns
  - user_id - creator
  - body_text
  - get_involved_url

#### static_pages
  - title
  - body_text

#### image uploads
  - attachable_id
  - attachable_type
  - attachment_name
  - attachment
