package perltugues::inteiro;

use perltugues::tipo;

use overload 
   "=="  => sub{
                 my $r = shift;
                 my $o = shift;
                 if(ref $o =~ /perltugues::\w+/) {
                    return $r->{valor} == $o->{valor}
                 }else{
                    return $r->{valor} == $o
                 }
              },
   "!="  => sub{
                 my $r = shift;
                 my $o = shift;
                 if(ref $o =~ /perltugues::\w+/) {
                    return $r->{valor} != $o->{valor}
                 }else{
                    return $r->{valor} != $o
                 }
              },
   ">"  => sub{
                 my $r = shift;
                 my $o = shift;
                 if(ref $o =~ /perltugues::\w+/) {
                    return $r->{valor} > $o->{valor}
                 }else{
                    return $r->{valor} > $o
                 }
              },
   "<"  => sub{
                 my $r = shift;
                 my $o = shift;
                 if(ref $o =~ /perltugues::\w+/) {
                    return $r->{valor} < $o->{valor}
                 }else{
                    return $r->{valor} < $o
                 }
              },
   ">=" => sub{
                 my $r = shift;
                 my $o = shift;
                 if(ref $o =~ /perltugues::\w+/) {
                    return $r->{valor} >= $o->{valor}
                 }else{
                    return $r->{valor} >= $o
                 }
              },
   "<=" => sub{
                 my $r = shift;
                 my $o = shift;
                 if(ref $o =~ /perltugues::\w+/) {
                    return $r->{valor} <= $o->{valor}
                 }else{
                    return $r->{valor} <= $o
                 }
              },
;
@perltugues::inteiro::ISA = qw/perltugues::tipo/;

sub new {
   my $class   = shift;
   my $r = $class->SUPER::new;
   $r->{valor} = 0;
   $r->{regex} = '^\d+$';
   $r->{msg}   = 'Não é Inteiro';
   bless $r, $class
}
42;