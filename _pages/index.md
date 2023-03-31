<div class="text-center my-5 py-5 mx-auto w-lg-50">
	<p class="lead">Exporter-Tiny is a Perl distribution including Exporter::Tiny and Exporter::Shiny.</p>
	<p class="lead">An exporter is a module which implements an <code>import</code> method which allows other modules to import functions and variables into its namespace.</p>
	<p class="lead">Exporters are essential for modular, functional programming in Perl.</p>
	<p class="pt-5"><img alt="GitHub Issues" src="https://img.shields.io/github/issues/tobyink/p5-exporter-tiny" title="GitHub Issues"> <img alt="GitHub Actions" src="https://github.com/tobyink/p5-exporter-tiny/workflows/CI/badge.svg" title="GitHub Actions"> <img alt="Coveralls status" src="https://coveralls.io/repos/github/tobyink/p5-exporter-tiny/badge.svg?branch=master" title="Coveralls status"> <img alt="Codecov status" src="https://codecov.io/gh/tobyink/p5-exporter-tiny/branch/master/graph/badge.svg" title="Codecov status"></p>
</div>

----

<div class="text-center">
	<h2 class="display-1">Features for You</h2>
	<h3>Generators</h3>
	<p>Generate a coderef on-the-fly to be installed into your caller's package.</p>
	<h3>Tags</h3>
	<p>Just like Exporter.pm!</p>
	<h3>Easy Config</h3>
	<p>Just use <code>@EXPORT</code>, <code>@EXPORT_OK</code>, and <code>%EXPORT_TAGS</code>.</p>
	<h3>Zero dependencies</h3>
	<p>Exporter::Tiny only uses core Perl modules.</p>
</div>

----

<div class="text-center">
	<h2 class="display-1">Features for Your User</h2>
	<h3>Lexical Imports</h3>
	<p>On newer versions of Perl (or if optional dependencies are installed), your caller can import your functions lexically.</p>
	<h3>Renaming</h3>
	<p>Your caller can choose a different name for imported functions.</p>
</div>

----

<h2 class="display-1 text-center pb-3">A quick example</h2>

<div class="row">
	<div class="col-lg-6">
		<h3>Using Exporter::Tiny directly</h3>
		<pre><code>package MyUtils {
  use base "Exporter::Tiny";
  our @EXPORT_OK = qw( frobnicate );
  
  sub frobnicate {
    ...;
  }
}

use MyUtils 'frobnicate' => { -as => 'frob' };

print frob( 42 ), "\n";</code></pre>
	</div>
	<div class="col-lg-6">
		<h3>Using the Exporter::Shiny shortcut</h3>
		<pre><code>package MyUtils {
  use Exporter::Shiny qw( frobnicate );
  
  sub frobnicate {
    ...;
  }
}

use MyUtils 'frobnicate' => { -as => 'frob' };

print frob( 42 ), "\n";</code></pre>
	</div>

</div>

----

<div class="row">
	<div class="col-12 col-lg-6">
		<h2 class="display-1">Download</h2>
		<p><a class="btn btn-primary btn-lg" href="https://metacpan.org/dist/Exporter-Tiny"><i class="fa-solid fa-download"></i> Download from the CPAN</a></p>
	</div>
	<div class="col-12 col-lg-6">
		<p>Exporter-Tiny is available for most Linux and BSD distributions.
		See <a href="/installation.html">installation advice</a>.</p>
		<table class="table">
			<tbody>
				<tr>
					<th><i class="fa-brands fa-linux"></i> Arch Linux</th>
					<td><a target="_blank" href="https://archlinux.org/packages/extra/any/perl-exporter-tiny/">perl-exporter-tiny</a></td>
				</tr>
				<tr>
					<th><i class="fa-brands fa-linux"></i> Debian</th>
					<td><a target="_blank" href="https://debian.pkgs.org/11/debian-main-amd64/libexporter-tiny-perl_1.002002-1_all.deb.html">libexporter-tiny-perl</a></td>
				</tr>
				<tr>
					<th><i class="fa-brands fa-fedora"></i> Fedora OS</th>
					<td><a target="_blank" href="https://packages.fedoraproject.org/pkgs/perl-Exporter-Tiny/perl-Exporter-Tiny/">perl-Exporter-Tiny</a></td>
				</tr>
				<tr>
					<th><i class="fa-brands fa-linux"></i> Manjaro</th>
					<td><a target="_blank" href="https://software.manjaro.org/package/perl-exporter-tiny">perl-exporter-tiny</a></td>
				</tr>
				<tr>
					<th><i class="fa-brands fa-redhat"></i> Redhat</th>
					<td><a target="_blank" href="https://packages.fedoraproject.org/pkgs/perl-Exporter-Tiny/perl-Exporter-Tiny/">perl-Exporter-Tiny</a></td>
				</tr>
				<tr>
					<th><i class="fa-brands fa-suse"></i> SuSE</th>
					<td><a target="_blank" href="https://software.opensuse.org/package/perl-Exporter-Tiny">perl-Exporter-Tiny</a></td>
				</tr>
				<tr>
					<th><i class="fa-brands fa-ubuntu"></i> Ubuntu</th>
					<td><a target="_blank" href="https://packages.ubuntu.com/search?keywords=libexporter-tiny-perl&searchon=names">libexporter-tiny-perl</a></td>
				</tr>
				<tr>
					<th><i class="fa-brands fa-freebsd"></i> FreeBSD</th>
					<td><a target="_blank" href="https://www.freshports.org/devel/p5-Exporter-Tiny">p5-Exporter-Tiny</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>


----

<div class="text-center w-lg-75 w-xl-50 mx-auto">
	<p style="font-size:2rem">Powered by <a class="text-decoration:none" href="http://www.perl.org/">Perl</a></p>
	
	<h2 class="h4">What is Perl?</h2>
	<p>Perl is a high-level, general-purpose, interpreted, dynamic programming language. Perl was developed by Larry Wall in 1987 as a general-purpose Unix scripting language to make report processing easier. Since then, it has undergone many changes and revisions. In 1998, it was also referred to as the "duct tape that holds the Internet together."</p>
</div>

