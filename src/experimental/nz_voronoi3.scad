use <util/rand.scad>;
use <experimental/_impl/_nz_voronoi3_impl.scad>;

function nz_voronoi3(size, x, y, z, seed, dim = 2) =
    let(
        sd = 6 + (is_undef(seed) ? floor(rand(0, 256)) : seed % 256),
        // m*n pixels per grid
        m = size[0] / dim,
        n = size[1] / dim,
        o = size[2] / dim
    )
    _nz_voronoi3([x, y, z], sd, dim, m, n, o);