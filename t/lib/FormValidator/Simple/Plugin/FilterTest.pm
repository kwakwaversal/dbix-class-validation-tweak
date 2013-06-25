package FormValidator::Simple::Plugin::FilterTest;
use strict;
use warnings;

use FormValidator::Simple::Constants;
use FormValidator::Simple::Exception;

sub LOWERCASE {
  my ($self, $params, $args) = @_;

  map { $_ = lc $_ } @$params;

  return TRUE, $#$params ? $params : $params->[0];
}

1;
