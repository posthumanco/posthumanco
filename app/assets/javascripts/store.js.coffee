# http://emberjs.com/guides/models/defining-a-store/

DS.RESTAdapter.reopen
	namespace: "api/v1"

Posthuman.Store = DS.Store.extend
  revision: 12
