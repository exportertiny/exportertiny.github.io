<div class="text-center my-5 pt-5 mx-auto w-lg-50">
	<p class="lead">Exporter-Tiny is a Perl distribution including Exporter::Tiny and Exporter::Shiny.</p>
	<p class="lead">An exporter is a module which implements an <code>import</code> method which allows other modules to import functions and variables into its namespace.</p>
	<p class="lead">Exporters are essential for modular, functional programming in Perl.</p>
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

<div class="text-center">
	<h2 class="display-1">Download</h2>
	<p><a style="font-size:2rem;text-decoration:none" href="https://metacpan.org/dist/Exporter-Tiny"><i class="fa-solid fa-download"></i> Download from the CPAN</a></p>
</div>


----

<div class="text-center">
	<p style="font-size:2rem">Powered by <a class="text-decoration:none" href="http://www.perl.org/">Perl</a>.</p>
</div>

