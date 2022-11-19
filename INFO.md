# What is this?

This is a an archive containing the last `openjdk-7-*` packages published by Debian
during Debian Jessie, unpacked to the root of this repository. If you don't know why
you need this, you probably don't need it, but if you do know why you need this then
the reason I did it this way is so that we can:

1. Always have a backup.
2. Which is signed by GPG at the time it was checked in.
3. Which has a record of the hash of every single file at the time it was checked in.
4. Which otherwise leaves the archive packages untouched(with the expired signatures intact)

Before I checked these in and generated the hashes, I made sure to find an HTTPS mirror of
the Debian Archive with a valid certificate, and then took care to make sure that the only
thing wrong with the signature on the package files is merely expired due to the expiration
of the Debian Jessie signing keys. Therefore, the packages can be considered to be authentic.

As a further measure, I generated the archive twice, using different archive sources. I then
compared the hashes of the 2 downloads, which were identical, unpacked them, diffed the 2
resulting directories, which were also identical.

## Why?

Because sometimes, you need a Java 7 `-bootclasspath` and you don't have a good way to get
a good one. For instance, if you use certain interface features of Java 8 that are not in
Java 7, then when you run your Android application it will crash completely in places that
don't make sense anywhere else.

- [AlainODea Example](https://gist.github.com/AlainODea/1375759b8720a3f9f094)
- [The I2P for Android example](http://zzz.i2p/topics/1668)

```
# ignored files due to sizze limit
./openjdk-7-dbg_7u181-2.6.14-1~deb8u1_amd64.deb
./usr/lib/debug/.build-id/78/b2fc51ee18285354ad0f4e36ddc1361bddc274.debug
*.deb
```