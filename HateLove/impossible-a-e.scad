// Impossible object: A (front) + E (back)
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
    [0.325000, 0.073203, -0.382881],
    [0.324894, 0.073406, -0.382798],
    [0.324576, 0.074015, -0.382549],
    [0.324046, 0.075030, -0.382134],
    [0.323305, 0.076112, -0.381216],
    [0.322353, 0.077397, -0.379931],
    [0.321191, 0.078966, -0.378362],
    [0.319819, 0.080819, -0.376509],
    [0.318239, 0.082951, -0.374377],
    [0.316451, 0.085365, -0.371963],
    [0.314457, 0.088058, -0.369270],
    [0.312257, 0.091027, -0.366301],
    [0.309854, 0.094270, -0.363058],
    [0.307248, 0.097788, -0.359540],
    [0.304443, 0.101575, -0.355753],
    [0.301438, 0.105631, -0.351697],
    [0.298237, 0.109952, -0.347376],
    [0.294842, 0.114536, -0.342792],
    [0.291254, 0.119379, -0.337949],
    [0.287476, 0.124480, -0.332848],
    [0.283510, 0.129832, -0.327496],
    [0.279360, 0.135434, -0.321894],
    [0.275028, 0.141283, -0.316045],
    [0.270516, 0.147375, -0.309953],
    [0.265827, 0.153703, -0.303625],
    [0.260965, 0.160267, -0.297061],
    [0.255933, 0.167060, -0.290268],
    [0.250734, 0.174078, -0.283250],
    [0.245371, 0.181318, -0.276010],
    [0.239849, 0.188772, -0.268556],
    [0.234170, 0.196438, -0.260890],
    [0.228338, 0.204310, -0.253018],
    [0.222357, 0.212384, -0.244944],
    [0.216231, 0.220653, -0.236675],
    [0.209964, 0.229113, -0.228215],
    [0.203560, 0.237758, -0.219570],
    [0.197023, 0.246582, -0.210746],
    [0.190358, 0.255580, -0.201748],
    [0.183569, 0.264744, -0.192584],
    [0.176659, 0.274072, -0.183256],
    [0.169635, 0.283554, -0.173774],
    [0.162500, 0.293185, -0.164143],
    [0.155259, 0.302960, -0.154368],
    [0.147917, 0.312872, -0.144456],
    [0.140478, 0.322913, -0.134415],
    [0.132947, 0.333079, -0.124249],
    [0.125330, 0.343362, -0.113966],
    [0.117631, 0.353754, -0.103574],
    [0.109855, 0.364251, -0.093077],
    [0.102008, 0.374844, -0.082484],
    [0.094094, 0.383759, -0.073569],
    [0.086119, 0.383759, -0.073569],
    [0.078088, 0.383759, -0.073569],
    [0.070005, 0.383759, -0.073569],
    [0.061877, 0.383759, -0.073569],
    [0.053709, 0.383759, -0.073569],
    [0.045505, 0.383759, -0.073569],
    [0.037272, 0.383759, -0.073569],
    [0.029015, 0.383759, -0.073569],
    [0.020738, 0.383759, -0.073569],
    [0.012448, 0.383759, -0.073569],
    [0.004150, 0.383759, -0.073569],
    [-0.004150, 0.383759, -0.073569],
    [-0.012448, 0.383759, -0.073569],
    [-0.020738, 0.383759, -0.073569],
    [-0.029015, 0.383759, -0.073569],
    [-0.037272, 0.383759, -0.073569],
    [-0.045505, 0.383759, -0.073569],
    [-0.053709, 0.383759, -0.073569],
    [-0.061877, 0.383759, -0.073569],
    [-0.070005, 0.383759, -0.073569],
    [-0.078088, 0.383759, -0.073569],
    [-0.086119, 0.383759, -0.073569],
    [-0.094094, 0.383759, -0.073569],
    [-0.102008, 0.374734, -0.082594],
    [-0.109855, 0.364140, -0.093188],
    [-0.117631, 0.353644, -0.103684],
    [-0.125330, 0.343252, -0.114076],
    [-0.132947, 0.332969, -0.124359],
    [-0.140478, 0.322803, -0.134525],
    [-0.147917, 0.312761, -0.144567],
    [-0.155259, 0.302850, -0.154478],
    [-0.162500, 0.293075, -0.164253],
    [-0.169635, 0.283443, -0.173885],
    [-0.176659, 0.273961, -0.183367],
    [-0.183569, 0.264634, -0.192694],
    [-0.190358, 0.255470, -0.201858],
    [-0.197023, 0.246472, -0.210856],
    [-0.203560, 0.237648, -0.219680],
    [-0.209964, 0.229003, -0.228325],
    [-0.216231, 0.220543, -0.236785],
    [-0.222357, 0.212273, -0.245055],
    [-0.228338, 0.204200, -0.253128],
    [-0.234170, 0.196328, -0.261000],
    [-0.239849, 0.188662, -0.268666],
    [-0.245371, 0.181207, -0.276121],
    [-0.250734, 0.173968, -0.283360],
    [-0.255933, 0.166949, -0.290379],
    [-0.260965, 0.160157, -0.297171],
    [-0.265827, 0.153593, -0.303735],
    [-0.270516, 0.147265, -0.310063],
    [-0.275028, 0.141173, -0.316155],
    [-0.279360, 0.135324, -0.322004],
    [-0.283510, 0.129722, -0.327606],
    [-0.287476, 0.124369, -0.332959],
    [-0.291254, 0.119269, -0.338059],
    [-0.294842, 0.114426, -0.342902],
    [-0.298237, 0.109842, -0.347486],
    [-0.301438, 0.105521, -0.351807],
    [-0.304443, 0.101465, -0.355863],
    [-0.307248, 0.097678, -0.359650],
    [-0.309854, 0.094161, -0.363167],
    [-0.312257, 0.090917, -0.366411],
    [-0.314457, 0.087948, -0.369380],
    [-0.316451, 0.085255, -0.372073],
    [-0.318239, 0.082841, -0.374487],
    [-0.319819, 0.080708, -0.376620],
    [-0.321191, 0.078856, -0.378472],
    [-0.322353, 0.077287, -0.380041],
    [-0.323305, 0.076002, -0.381326],
    [-0.324046, 0.075002, -0.382326],
    [-0.324576, 0.074287, -0.383041],
    [-0.324894, 0.073562, -0.383175],
    [-0.325000, 0.072616, -0.382515],
    [-0.324894, -0.015237, -0.294689],
    [-0.324576, -0.015315, -0.294697],
    [-0.324046, -0.015444, -0.294710],
    [-0.323305, -0.015544, -0.294646],
    [-0.322353, -0.015569, -0.294622],
    [-0.321191, -0.015569, -0.294622],
    [-0.319819, -0.015569, -0.294622],
    [-0.318239, -0.015569, -0.294622],
    [-0.316451, -0.015569, -0.294622],
    [-0.314457, -0.015569, -0.294622],
    [-0.312257, -0.015569, -0.294622],
    [-0.309854, -0.383738, 0.073547],
    [-0.307248, -0.383759, 0.073569],
    [-0.304443, -0.383759, 0.073569],
    [-0.301438, -0.383759, 0.073569],
    [-0.298237, -0.383759, 0.073569],
    [-0.294842, -0.383759, 0.073569],
    [-0.291254, -0.383759, 0.073569],
    [-0.287476, -0.383759, 0.073569],
    [-0.283510, -0.383759, 0.073569],
    [-0.279360, -0.383759, 0.073569],
    [-0.275028, -0.383759, 0.073569],
    [-0.270516, -0.383759, 0.073569],
    [-0.265827, -0.383759, 0.073569],
    [-0.260965, -0.383759, 0.073569],
    [-0.255933, -0.383759, 0.073569],
    [-0.250734, -0.383759, 0.073569],
    [-0.245371, -0.383759, 0.073569],
    [-0.239849, -0.383759, 0.073569],
    [-0.234170, -0.383759, 0.073569],
    [-0.228338, -0.383759, 0.073569],
    [-0.222357, -0.383759, 0.073569],
    [-0.216231, -0.383759, 0.073569],
    [-0.209964, -0.383759, 0.073569],
    [-0.203560, -0.383759, 0.073569],
    [-0.197023, -0.383759, 0.073569],
    [-0.190358, -0.383759, 0.073569],
    [-0.183569, -0.383759, 0.073569],
    [-0.176659, -0.383759, 0.073569],
    [-0.169635, -0.383759, 0.073569],
    [-0.162500, -0.381182, 0.076146],
    [-0.155259, -0.370816, 0.086512],
    [-0.147917, -0.360304, 0.097024],
    [-0.140478, -0.349655, 0.107673],
    [-0.132947, -0.338875, 0.118453],
    [-0.125330, -0.327970, 0.129358],
    [-0.117631, -0.327247, 0.130081],
    [-0.109855, -0.327247, 0.130081],
    [-0.102008, -0.327247, 0.130081],
    [-0.094094, -0.327247, 0.130081],
    [-0.086119, -0.327247, 0.130081],
    [-0.078088, -0.327247, 0.130081],
    [-0.070005, -0.327247, 0.130081],
    [-0.061877, -0.327247, 0.130081],
    [-0.053709, -0.327247, 0.130081],
    [-0.045505, -0.327247, 0.130081],
    [-0.037272, -0.327247, 0.130081],
    [-0.029015, -0.327247, 0.130081],
    [-0.020738, -0.327247, 0.130081],
    [-0.012448, -0.327247, 0.130081],
    [-0.004150, -0.327247, 0.130081],
    [0.004150, -0.327247, 0.130081],
    [0.012448, -0.327247, 0.130081],
    [0.020738, -0.327247, 0.130081],
    [0.029015, -0.327247, 0.130081],
    [0.037272, -0.327247, 0.130081],
    [0.045505, -0.327247, 0.130081],
    [0.053709, -0.327247, 0.130081],
    [0.061877, -0.327247, 0.130081],
    [0.070005, -0.327247, 0.130081],
    [0.078088, -0.327247, 0.130081],
    [0.086119, -0.327247, 0.130081],
    [0.094094, -0.327247, 0.130081],
    [0.102008, -0.327247, 0.130081],
    [0.109855, -0.327247, 0.130081],
    [0.117631, -0.327247, 0.130081],
    [0.125330, -0.327388, 0.129940],
    [0.132947, -0.338281, 0.119047],
    [0.140478, -0.349177, 0.108151],
    [0.147917, -0.359939, 0.097389],
    [0.155259, -0.370561, 0.086767],
    [0.162500, -0.381038, 0.076290],
    [0.169635, -0.383759, 0.073569],
    [0.176659, -0.383759, 0.073569],
    [0.183569, -0.383759, 0.073569],
    [0.190358, -0.383759, 0.073569],
    [0.197023, -0.383759, 0.073569],
    [0.203560, -0.383759, 0.073569],
    [0.209964, -0.383759, 0.073569],
    [0.216231, -0.383759, 0.073569],
    [0.222357, -0.383759, 0.073569],
    [0.228338, -0.383759, 0.073569],
    [0.234170, -0.383759, 0.073569],
    [0.239849, -0.383759, 0.073569],
    [0.245371, -0.383759, 0.073569],
    [0.250734, -0.383759, 0.073569],
    [0.255933, -0.383759, 0.073569],
    [0.260965, -0.383759, 0.073569],
    [0.265827, -0.383759, 0.073569],
    [0.270516, -0.383759, 0.073569],
    [0.275028, -0.383759, 0.073569],
    [0.279360, -0.383759, 0.073569],
    [0.283510, -0.383759, 0.073569],
    [0.287476, -0.383759, 0.073569],
    [0.291254, -0.383759, 0.073569],
    [0.294842, -0.383759, 0.073569],
    [0.298237, -0.383759, 0.073569],
    [0.301438, -0.383759, 0.073569],
    [0.304443, -0.383759, 0.073569],
    [0.307248, -0.383759, 0.073569],
    [0.309854, -0.383759, 0.073569],
    [0.312257, -0.383759, 0.073569],
    [0.314457, -0.383759, 0.073569],
    [0.316451, -0.383759, 0.073569],
    [0.318239, -0.383759, 0.073569],
    [0.319819, -0.383759, 0.073569],
    [0.321191, -0.383759, 0.073569],
    [0.322353, -0.383759, 0.073569],
    [0.323305, -0.383759, 0.073569],
    [0.324046, -0.383759, 0.073569],
    [0.324576, -0.383644, 0.073684],
    [0.324894, -0.383538, 0.073790],
    [0.325000, -0.383503, 0.073825],
    [0.325000, 0.073203, -0.382881]
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
