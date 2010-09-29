#!/opt/local/bin/perl
use LWP::UserAgent;

$username = 'Magistol';
$message = 'Hello World!';

$sendURL = 'http://im.kayac.com/api/post/' . $username;
print $sendURL;
$ua = LWP::UserAgent->new;
my $req = new HTTP::Request POST => $sendURL;
$req->content_type('application/x-www-form-urlencoded');
$content = 'message=' . $message;
$req->content( $content );

my $res = $ua->request( $req );

if( $res->is_success ){
	print $res->as_string;
}
else{
	print 'メッセージの送信に失敗しました\n';
}	