class profile::cloudcontrol::gcompute(
  String $credential,
  String $password,
) {
notify { $credential: }

notify { $password: }


}
