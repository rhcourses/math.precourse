use Cwd;
my $rootdir = getcwd;
my $srcdir = "$rootdir/texsrc";
my $builddir = "$rootdir/build";
my $auxdir = "$rootdir/aux";
@default_files = ();
sub addsrcfiles {
    my ($dirname, @filenames) = @_;
    for $filename (@filenames) {
        @default_files = (
            @default_files,
            "$srcdir/$dirname/$filename"
        );
    }
}

$emulate_aux = 1;
$out_dir = "$builddir";
$aux_dir = "$auxdir";
#$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';
$pdflatex = 'lualatex -interaction=nonstopmode';
$pdf_mode = 1;
$do_cd = 0;
$clean_ext = 'snm nav synctex.gz';

addsrcfiles("slides",
    "slides_complete.tex",
);
