// Impossible object: love (front) + hate (back)
// Exported from the Impossible Objects web app.
// Tweak the parameters below directly, or via Window > Customizer in OpenSCAD.
// Press F5 to preview, F6 to render, then export as STL for printing.

// ===== PARAMETERS =====

/* [Overall dimensions] */
overall_width = 80;     // overall size scale for the whole object (mm) - everything else scales with this
overall_height = 7;    // total height of the ribbon band at each point, top to bottom (mm)
wall_thickness = 3;      // wall thickness of the ribbon band (mm)

// Distance between the top and bottom rail centers. The rounded caps swept from wall_thickness
// add that much extra extent on top of this drop, so subtracting it here is what makes
// overall_height equal the object's true top-to-bottom height.
ribbon_height = max(overall_height - wall_thickness, 0);

/* [Legs] */
add_legs = true;       // add three support legs at 120-degree spacing
leg_width = 5;        // true width (mm) of each leg where it meets the object, centered on the leg's position (half each direction) - includes the wall_thickness added by the rounded ends, so this is the actual measurable width, not just the arc walked along the curve
leg_extension = 5;      // how far (mm) the legs extend below the lowest point of the figure

/* [Feet] */
foot_height = 2;        // height of all three feet (mm)
foot_width = 7;         // width/diameter of each foot (mm) - almond-shaped on the marker leg, round on the other two

// ===== CURVE (dimensionless, baked from the web app preview) =====

/* [Hidden] */
curve_points = [
    [0.325000, 0.014096, -0.084876],
    [0.324894, 0.015737, -0.083741],
    [0.324576, 0.017086, -0.083909],
    [0.324046, 0.017460, -0.083672],
    [0.323305, 0.017473, -0.083685],
    [0.322353, 0.017490, -0.083701],
    [0.321191, 0.099603, -0.001601],
    [0.319819, 0.099741, -0.001463],
    [0.318239, 0.099807, -0.001397],
    [0.316451, 0.099807, -0.001397],
    [0.314457, 0.099807, -0.001397],
    [0.312257, 0.099807, -0.001397],
    [0.309854, 0.099807, -0.001397],
    [0.307248, 0.099807, -0.001397],
    [0.304443, 0.099807, -0.001397],
    [0.301438, 0.099807, -0.001397],
    [0.298237, 0.099807, -0.001397],
    [0.294842, 0.099807, -0.001397],
    [0.291254, 0.099807, -0.001397],
    [0.287476, 0.099807, -0.001397],
    [0.283510, 0.099807, -0.001397],
    [0.279360, 0.099807, -0.001397],
    [0.275028, 0.099799, -0.001389],
    [0.270516, 0.056944, 0.041465],
    [0.265827, 0.056897, 0.041513],
    [0.260965, 0.056897, 0.041513],
    [0.255933, 0.056897, 0.041513],
    [0.250734, 0.056897, 0.041513],
    [0.245371, 0.056897, 0.041513],
    [0.239849, 0.056897, 0.041513],
    [0.234170, 0.056897, 0.041513],
    [0.228338, 0.056897, 0.041513],
    [0.222357, 0.056897, 0.041513],
    [0.216231, 0.056897, 0.041513],
    [0.209964, 0.056897, 0.041513],
    [0.203560, 0.056897, 0.041513],
    [0.197023, 0.057109, 0.041300],
    [0.190358, 0.099807, -0.001397],
    [0.183569, 0.099807, -0.001397],
    [0.176659, 0.099807, -0.001397],
    [0.169635, 0.099807, -0.001397],
    [0.162500, 0.099807, -0.001397],
    [0.155259, 0.099807, -0.001397],
    [0.147917, 0.099807, -0.001397],
    [0.140478, 0.099807, -0.001397],
    [0.132947, 0.099807, -0.001397],
    [0.125330, 0.099807, -0.001397],
    [0.117631, 0.099807, -0.001397],
    [0.109855, 0.099807, -0.001397],
    [0.102008, 0.099807, -0.001397],
    [0.094094, 0.096830, 0.001579],
    [0.086119, 0.085413, 0.012997],
    [0.078088, 0.081370, 0.017040],
    [0.070005, 0.081370, 0.017040],
    [0.061877, 0.081370, 0.017040],
    [0.053709, 0.081370, 0.017040],
    [0.045505, 0.081370, 0.017040],
    [0.037272, 0.081370, 0.017040],
    [0.029015, 0.081370, 0.017040],
    [0.020738, 0.081370, 0.017040],
    [0.012448, 0.081370, 0.017040],
    [0.004150, 0.081370, 0.017040],
    [-0.004150, 0.089802, 0.008607],
    [-0.012448, 0.099629, -0.001219],
    [-0.020738, 0.099807, -0.001397],
    [-0.029015, 0.099830, -0.001374],
    [-0.037272, 0.100233, -0.000972],
    [-0.045505, 0.100655, -0.000549],
    [-0.053709, 0.101076, -0.000129],
    [-0.061877, 0.101462, 0.000323],
    [-0.070005, 0.101911, 0.000707],
    [-0.078088, 0.102553, 0.001348],
    [-0.086119, 0.103149, 0.001945],
    [-0.094094, 0.103493, 0.002289],
    [-0.102008, 0.103553, 0.002348],
    [-0.109855, 0.103581, 0.002377],
    [-0.117631, 0.103091, 0.002383],
    [-0.125330, 0.021409, 0.083161],
    [-0.132947, 0.020726, 0.082477],
    [-0.140478, 0.019795, 0.081547],
    [-0.147917, 0.018585, 0.080337],
    [-0.155259, 0.018329, 0.080081],
    [-0.162500, 0.018329, 0.080081],
    [-0.169635, 0.018329, 0.080081],
    [-0.176659, 0.018329, 0.080081],
    [-0.183569, 0.099773, -0.001364],
    [-0.190358, 0.099807, -0.001397],
    [-0.197023, 0.099807, -0.001397],
    [-0.203560, 0.099807, -0.001397],
    [-0.209964, 0.099807, -0.001397],
    [-0.216231, 0.099807, -0.001397],
    [-0.222357, 0.099807, -0.001397],
    [-0.228338, 0.099807, -0.001397],
    [-0.234170, 0.099807, -0.001397],
    [-0.239849, 0.099807, -0.001397],
    [-0.245371, 0.099807, -0.001397],
    [-0.250734, 0.099807, -0.001397],
    [-0.255933, 0.099807, -0.001397],
    [-0.260965, 0.099807, -0.001397],
    [-0.265827, 0.099807, -0.001397],
    [-0.270516, 0.099807, -0.001397],
    [-0.275028, 0.099807, -0.001397],
    [-0.279360, 0.099807, -0.001397],
    [-0.283510, 0.099807, -0.001397],
    [-0.287476, 0.099807, -0.001397],
    [-0.291254, 0.099807, -0.001397],
    [-0.294842, 0.099807, -0.001397],
    [-0.298237, 0.099807, -0.001397],
    [-0.301438, 0.099807, -0.001397],
    [-0.304443, 0.099807, -0.001397],
    [-0.307248, 0.099807, -0.001397],
    [-0.309854, 0.099807, -0.001397],
    [-0.312257, 0.099807, -0.001397],
    [-0.314457, 0.099807, -0.001397],
    [-0.316451, 0.099807, -0.001397],
    [-0.318239, 0.099807, -0.001397],
    [-0.319819, 0.099807, -0.001397],
    [-0.321191, 0.099807, -0.001397],
    [-0.322353, 0.099748, -0.001339],
    [-0.323305, 0.099687, -0.001278],
    [-0.324046, 0.099308, -0.001341],
    [-0.324576, 0.098680, -0.001004],
    [-0.324894, 0.098303, -0.000801],
    [-0.325000, 0.098177, -0.000734],
    [-0.324894, -0.020617, -0.084706],
    [-0.324576, -0.021358, -0.084107],
    [-0.324046, -0.021666, -0.084035],
    [-0.323305, -0.022098, -0.083934],
    [-0.322353, -0.022158, -0.083909],
    [-0.321191, -0.103495, -0.002572],
    [-0.319819, -0.103578, -0.002489],
    [-0.318239, -0.103636, -0.002431],
    [-0.316451, -0.103636, -0.002431],
    [-0.314457, -0.103636, -0.002431],
    [-0.312257, -0.103636, -0.002431],
    [-0.309854, -0.103636, -0.002431],
    [-0.307248, -0.103636, -0.002431],
    [-0.304443, -0.103636, -0.002431],
    [-0.301438, -0.103636, -0.002431],
    [-0.298237, -0.103636, -0.002431],
    [-0.294842, -0.103636, -0.002431],
    [-0.291254, -0.103636, -0.002431],
    [-0.287476, -0.103636, -0.002431],
    [-0.283510, -0.103636, -0.002431],
    [-0.279360, -0.103636, -0.002431],
    [-0.275028, -0.103636, -0.002431],
    [-0.270516, -0.103636, -0.002431],
    [-0.265827, -0.103636, -0.002431],
    [-0.260965, -0.103636, -0.002431],
    [-0.255933, -0.103636, -0.002431],
    [-0.250734, -0.103636, -0.002431],
    [-0.245371, -0.103636, -0.002431],
    [-0.239849, -0.103636, -0.002431],
    [-0.234170, -0.103636, -0.002431],
    [-0.228338, -0.103636, -0.002431],
    [-0.222357, -0.103636, -0.002431],
    [-0.216231, -0.103636, -0.002431],
    [-0.209964, -0.103636, -0.002431],
    [-0.203560, -0.103636, -0.002431],
    [-0.197023, -0.103636, -0.002431],
    [-0.190358, -0.103636, -0.002431],
    [-0.183569, -0.103636, -0.002431],
    [-0.176659, -0.091560, 0.009644],
    [-0.169635, -0.094348, 0.006856],
    [-0.162500, -0.096649, 0.004556],
    [-0.155259, -0.098527, 0.002677],
    [-0.147917, -0.100052, 0.001153],
    [-0.140478, -0.101266, -0.000062],
    [-0.132947, -0.102198, -0.000994],
    [-0.125330, -0.102875, -0.001671],
    [-0.117631, -0.103332, -0.002128],
    [-0.109855, -0.103573, -0.002369],
    [-0.102008, -0.103626, -0.002421],
    [-0.094094, -0.103487, -0.002283],
    [-0.086119, -0.103139, -0.001935],
    [-0.078088, -0.102545, -0.001341],
    [-0.070005, -0.101672, -0.000468],
    [-0.061877, -0.100466, 0.000738],
    [-0.053709, -0.098871, 0.002334],
    [-0.045505, -0.096799, 0.004406],
    [-0.037272, -0.094138, 0.007066],
    [-0.029015, -0.090732, 0.010473],
    [-0.020738, -0.086296, 0.014908],
    [-0.012448, -0.080242, 0.020962],
    [-0.004150, -0.070620, 0.030585],
    [0.004150, -0.046103, 0.055102],
    [0.012448, -0.057303, 0.043901],
    [0.020738, -0.068494, 0.032710],
    [0.029015, -0.079666, 0.021538],
    [0.037272, -0.090813, 0.010392],
    [0.045505, -0.101927, -0.000723],
    [0.053709, -0.103636, -0.002431],
    [0.061877, -0.103636, -0.002431],
    [0.070005, -0.103636, -0.002431],
    [0.078088, -0.103636, -0.002431],
    [0.086119, -0.103636, -0.002431],
    [0.094094, -0.103636, -0.002431],
    [0.102008, -0.103636, -0.002431],
    [0.109855, -0.103068, -0.001864],
    [0.117631, -0.092840, 0.008365],
    [0.125330, -0.082445, 0.018760],
    [0.132947, -0.072164, 0.029040],
    [0.140478, -0.061997, 0.039207],
    [0.147917, -0.051956, 0.049249],
    [0.155259, -0.042044, 0.059160],
    [0.162500, -0.032266, 0.068938],
    [0.169635, -0.022640, 0.078565],
    [0.176659, -0.013154, 0.088050],
    [0.183569, -0.103636, -0.002431],
    [0.190358, -0.103636, -0.002431],
    [0.197023, -0.103636, -0.002431],
    [0.203560, -0.103636, -0.002431],
    [0.209964, -0.103636, -0.002431],
    [0.216231, -0.103636, -0.002431],
    [0.222357, -0.103636, -0.002431],
    [0.228338, -0.103636, -0.002431],
    [0.234170, -0.103636, -0.002431],
    [0.239849, -0.103636, -0.002431],
    [0.245371, -0.103636, -0.002431],
    [0.250734, -0.103636, -0.002431],
    [0.255933, -0.103636, -0.002431],
    [0.260965, -0.103636, -0.002431],
    [0.265827, -0.103636, -0.002431],
    [0.270516, -0.103636, -0.002431],
    [0.275028, -0.103636, -0.002431],
    [0.279360, -0.103636, -0.002431],
    [0.283510, -0.103636, -0.002431],
    [0.287476, -0.103636, -0.002431],
    [0.291254, -0.103636, -0.002431],
    [0.294842, -0.103636, -0.002431],
    [0.298237, -0.103636, -0.002431],
    [0.301438, -0.103636, -0.002431],
    [0.304443, -0.103636, -0.002431],
    [0.307248, -0.103636, -0.002431],
    [0.309854, -0.103636, -0.002431],
    [0.312257, -0.103636, -0.002431],
    [0.314457, -0.103636, -0.002431],
    [0.316451, -0.103636, -0.002431],
    [0.318239, -0.103636, -0.002431],
    [0.319819, -0.103636, -0.002431],
    [0.321191, -0.103636, -0.002431],
    [0.322353, -0.103593, -0.002389],
    [0.323305, -0.103551, -0.002346],
    [0.324046, -0.103320, -0.002116],
    [0.324576, -0.102970, -0.001766],
    [0.324894, -0.101945, -0.002370],
    [0.325000, -0.101648, -0.002527],
    [0.325000, 0.014096, -0.084876]
];

// The web app always samples the curve across a fixed dimensionless x-span
// of 0.65 (-0.325 to 0.325), regardless of the curve's actual shape, so
// dividing that back out here is what makes overall_width equal the
// object's real bounding-box width in mm. Not user-adjustable.
curve_sample_span = 0.65;
curve_points_mm = [
    for (p = curve_points) [ for (v = p) v * overall_width / curve_sample_span ]
];

// Lowest level reached by the figure: lowest curve point, minus the ribbon
// drop (ribbon_height) and the sphere radius used to sweep the ribbon.
floor_z = min([for (p = curve_points_mm) p[2]]) - ribbon_height - wall_thickness / 2;

// First crossing of the ray from (cx, cy) at angle a (degrees, measured from
// the +x axis, so +y is 90) with the curve, seen from above. The curve may
// cross a ray several times; the first crossing found is used. Returns
// [segment index, fraction along that segment] rather than the point
// itself, so callers can also walk along the curve from the crossing.
function ray_hit_seg(points, cx, cy, a) =
    let (
        dir = [cos(a), sin(a)],
        hits = [
            for (i = [0 : len(points) - 2])
                let (
                    v1 = [points[i][0] - cx, points[i][1] - cy],
                    v2 = [points[i + 1][0] - cx, points[i + 1][1] - cy],
                    c1 = dir[0] * v1[1] - dir[1] * v1[0],
                    c2 = dir[0] * v2[1] - dir[1] * v2[0]
                )
                // Segment straddles the ray's line, on the ray's side of the center
                if (c1 * c2 <= 0 && c1 != c2 && dir * (v1 + v2) > 0)
                    [i, c1 / (c1 - c2)]
        ]
    )
    hits[0];

function hit_point(points, i, t) = points[i] + t * (points[i + 1] - points[i]);

// Almond (vesica) outline: pointed at both ends of the y-axis, width w at
// its middle, length l tip to tip; the intersection of two equal circles.
module almond_2d(w, l) {
    a = w / 2;
    b = l / 2;
    R = (a * a + b * b) / (2 * a);
    c = R - a;
    intersection() {
        translate([ c, 0]) circle(r = R, $fn = 128);
        translate([-c, 0]) circle(r = R, $fn = 128);
    }
}

// Points walking forward along the closed curve from segment i, starting
// from_t fraction into it, until remaining (mm of arc length) is covered.
// N is the number of unique points (curve_points_mm repeats the first point
// as its last entry to close the loop, so indices wrap mod N). Stops short,
// interpolating the final point exactly at the requested distance, so a
// leg_width that runs more than once around a tiny curve can't loop forever.
function walk_curve(points, i, from_t, remaining, N, guard = 0) =
    remaining <= 1e-9 || guard > N ? [] :
    let (
        j = i % N,
        k = (j + 1) % N,
        seg = norm(points[k] - points[j]),
        avail = (1 - from_t) * seg
    )
    avail >= remaining ?
        [points[j] + (from_t + (seg > 0 ? remaining / seg : 0)) * (points[k] - points[j])] :
        concat([points[k]], walk_curve(points, j + 1, 0, remaining - avail, N, guard + 1));

// Mirror of walk_curve that walks backward: starts from_t fraction into
// segment i (same convention as walk_curve - segment i runs points[j] to
// points[j+1] where j = i mod N, measured from points[j] toward
// points[j+1]) and heads back toward points[j], then segment i-1, etc.
// Used for the half of the leg span behind the crossing point.
function walk_curve_back(points, i, from_t, remaining, N, guard = 0) =
    remaining <= 1e-9 || guard > N ? [] :
    let (
        j = ((i % N) + N) % N,
        k = (j + 1) % N,
        seg = norm(points[k] - points[j]),
        avail = from_t * seg
    )
    avail >= remaining ?
        [points[j] + (from_t - (seg > 0 ? remaining / seg : 0)) * (points[k] - points[j])] :
        concat([points[j]], walk_curve_back(points, j - 1, 1, remaining - avail, N, guard + 1));

// Ordered points spanning leg_width along the curve, centered on the
// crossing at segment i / fraction t: half_width back, the crossing point
// itself, then half_width forward.
function leg_span_points(points, i, t, half_width) =
    let (
        N = len(points) - 1,
        j = i % N,
        k = (j + 1) % N,
        seg = norm(points[k] - points[j]),
        // Arc length from the crossing point to points[k] (the first whole
        // point on the forward side) - already "spent" before the forward
        // walk's budget of half_width even starts, so it must come out of
        // that budget rather than being walked in addition to it.
        to_next_whole_point = (1 - t) * seg,
        center = hit_point(points, i, t),
        back = walk_curve_back(points, i, t, half_width, N),
        fwd = to_next_whole_point >= half_width
            ? [center + (half_width / seg) * (points[k] - points[j])]
            : concat([points[k]], walk_curve(points, j + 1, 0, half_width - to_next_whole_point, N))
    )
    concat([for (idx = [len(back) - 1 : -1 : 0]) back[idx]], [center], fwd);

// Sphere-hulled ribbon sweep through an open (non-closed) point list, top
// rail at each point's own z, bottom rail ribbon_height below - the same
// technique parametric_ribbon uses for the main curve.
module ribbon_hull_chain(points) {
    for (i = [0 : len(points) - 2]) {
        p1 = points[i];
        p2 = points[i + 1];
        hull() {
            translate(p1) sphere(r = wall_thickness / 2, $fn = 25);
            translate([p1[0], p1[1], p1[2] - ribbon_height]) sphere(r = wall_thickness / 2, $fn = 25);
            translate(p2) sphere(r = wall_thickness / 2, $fn = 25);
            translate([p2[0], p2[1], p2[2] - ribbon_height]) sphere(r = wall_thickness / 2, $fn = 25);
        }
    }
}

// Leg sweep: at every point along the span, hull a ball at that curve point
// with a ball directly below it at bottom_z (fixed, not per-point relative
// like the main ribbon), then hull each consecutive pair of those columns
// together - so the whole underside runs flush along bottom_z the entire
// length of the leg, like a wall of ribbon meeting the floor.
module leg_ribbon_chain(points, bottom_z) {
    for (i = [0 : len(points) - 2]) {
        p1 = points[i];
        p2 = points[i + 1];
        hull() {
            translate(p1) sphere(r = wall_thickness / 2, $fn = 25);
            translate([p1[0], p1[1], bottom_z]) sphere(r = wall_thickness / 2, $fn = 25);
            translate(p2) sphere(r = wall_thickness / 2, $fn = 25);
            translate([p2[0], p2[1], bottom_z]) sphere(r = wall_thickness / 2, $fn = 25);
        }
    }
}

// Three legs, placed where vertical half-planes from the xy-center of the
// shape (one toward +y, the others 120 and 240 degrees around) meet the
// curve. Each leg is a short ribbon spur - same cross-section as the main
// ribbon (wall_thickness) - that follows the curve for leg_width (half on
// each side of the crossing), then drops straight down to leg_extension
// below the figure's lowest point, the drop hulled smoothly into the last
// curve-following segment at each end.
module legs_for_curve(points) {
    xs = [for (p = points) p[0]];
    ys = [for (p = points) p[1]];
    cx = (min(xs) + max(xs)) / 2;
    cy = (min(ys) + max(ys)) / 2;
    leg_bottom = floor_z - leg_extension;
    // Half-thickness ball on each leg column bottoms out below leg_bottom
    // by wall_thickness / 2, which would poke past the feet's flat bottom
    // face; clipping the legs to z >= leg_bottom keeps everything flush.
    clip_span = overall_width * 4;
    // The balls swept along the curve (radius wall_thickness / 2) already
    // extend that far past each end of the arc-length span walked below, so
    // the true visible width is leg_width_along_curve + wall_thickness.
    // Subtracting wall_thickness here first is what makes leg_width mean
    // that true, measurable width rather than just the walked span.
    leg_width_along_curve = max(leg_width - wall_thickness, 0);
    for (a = [90, 210, 330]) {
        seg = ray_hit_seg(points, cx, cy, a);
        p = hit_point(points, seg[0], seg[1]);
        span = leg_span_points(points, seg[0], seg[1], leg_width_along_curve / 2);

        intersection() {
            leg_ribbon_chain(span, leg_bottom);
            translate([p[0] - clip_span / 2, p[1] - clip_span / 2, leg_bottom])
                cube([clip_span, clip_span, clip_span]);
        }

        // Feet, flush with the leg bottoms: an almond pointing +y on the
        // 90-degree leg (the orientation marker), round feet on the others.
        translate([p[0], p[1], leg_bottom]) {
            if (a == 90)
                linear_extrude(height = foot_height)
                    almond_2d(foot_width, sqrt(3) * foot_width);
            else
                cylinder(h = foot_height, d = foot_width, $fn = 50);
        }
    }
}

module parametric_ribbon(points) {
    ribbon_hull_chain(points);
}

parametric_ribbon(curve_points_mm);
if (add_legs) legs_for_curve(curve_points_mm);
