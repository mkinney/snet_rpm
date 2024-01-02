Name:           snet
Version:        0.4
Release:        1%{?dist}
Summary:        Simple network testing

License:        Apache
URL:            https://github.com/mkinney/snet
Source0:            snet-%{version}.tar.gz

%description
Simple network testing utility

%build
tar xvfz ../SOURCES/snet-%{version}.tar.gz --strip-components 1
/usr/local/go/bin/go build -v -o %{name}

%install
install -Dpm 0755 %{name} %{buildroot}%{_bindir}/%{name}

%files
%{_bindir}/%{name}

%changelog
* Tue Jan 02 2024 Mike Kinney <mike.kinney@gmail.com> - 0.0.1
- First version
