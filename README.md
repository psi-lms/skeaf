# SKEAF (patched)

A slightly patched version of the Supercell K-space Extremal Area Finder (SKEAF)
v1.3.0 r149 by Patrick Rourke, for easier building and scripted use.

All credit for the algorithm and the code goes to the original author.
See [`README.txt`](README.txt) for the original documentation (usage, input format, checking output)
and [`COPYING.txt`](COPYING.txt) for the GPLv3 license.

The original code is from
[`SKEAFrelease_v1p3p0_r149.tar.gz`](http://www.wien2k.at/reg_user/unsupported/SKEAFrelease_v1p3p0_r149.tar.gz).

## Citation

If you use SKEAF, please cite the original paper:

> P. M. C. Rourke and S. R. Julian, *Numerical extraction of de Haas–van Alphen frequencies from calculated band energies*,
> [Comput. Phys. Commun. **183**, 324 (2012)](https://doi.org/10.1016/j.cpc.2011.10.015)
> ([arXiv:0803.1895](https://arxiv.org/abs/0803.1895))

## Changes from the original

Patches by Junfeng Qiao ([@qiaojunfeng](https://github.com/qiaojunfeng)):

- Add a `Makefile` (gfortran by default) and move sources to `src/`.
- Fix logical comparisons (`==` → `.eqv.`) that gfortran rejects.
- Print the minus sign of negative angles (e.g. `-180.0` no longer prints as `*****`).
- Allow input lines up to 200 characters (was 100) when reading BXSF files.
- When reading `config.in` (`-rdcfg`), support automatic settings:
  - `Minimum extremal FS freq.` <= -1 uses the SKEAF default value.
  - `Theta`, `Starting theta`, `Ending theta` >= 1000 / 2000 / 3000 set the field along the
    a / b / c axis. The corresponding phi is set automatically and its input is ignored.

## Build

```shell
make all
```

Executables are written to `bin/`.
