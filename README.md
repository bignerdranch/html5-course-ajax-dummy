HTML5 Apps with jQuery: AJAX Endpoint.
======================================

JSON resourceful API endpoint for the HTML5 class. There is one resource: a sighting.

Routes
------

- `GET /sightings.json` for an array of all sightings
- `POST /sightings.json` with `application/json` content to create a sighting:

~~~json
{
  "sighting": {
    "kind": "Unicorn",
    "date": "2013-02-20",
    "location": "Candy Mountain",
    "witnesses": 2,
    "name": "Charlie"
  }
}
~~~

- `GET /sightings/:id.json` to get a JSON representation of the sighting with :id.
- `PUT /sightings/:id.json` to update an existing sighting (same content type and data as `POST`).
- `DELETE /sightings/:id.json` to destroy sighting with :id.
