module Servant.Auth where

-- * Authentication

-- | @Auth [auth1, auth2] val :> api@ represents an API protected *either* by
-- @auth1@ or @auth2@
data Auth (auths :: [*]) val

-- | A JSON Web Token (JWT) in the the Authorization header:
--
--    @Authorization: Bearer <token>@
--
-- Note that while the token is signed, it is not encrypted. Therefore do not
-- keep in it any information you would not like the client to know.
--
-- JWTs are described in IETF's <https://tools.ietf.org/html/rfc7519 RFC 7519>
data JWT

-- | A cookie. The content cookie itself is a JWT. Another cookie is also used,
-- the contents of which are expected to be send back to the server in a
-- header, for CSRF protection.
data Cookie

-- | Login via a form.
data FormLogin form

-- * Setting cookies

data SetCookies

{-data IsSecure = Secure | NotSecure-}
{-data IsHttpOnly = HttpOnly | NotHttpOnly-}