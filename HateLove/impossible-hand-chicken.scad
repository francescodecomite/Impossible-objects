// Impossible object: Hand (front) + Chicken (back)
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
    [0.325000, -0.120137, 0.045726],
    [0.324894, -0.117478, 0.048381],
    [0.324576, -0.114248, 0.051599],
    [0.324046, -0.110612, 0.055214],
    [0.323305, -0.044221, 0.121564],
    [0.322353, -0.041507, 0.124217],
    [0.321191, -0.039668, 0.125964],
    [0.319819, -0.038143, 0.127362],
    [0.318239, -0.036823, 0.128511],
    [0.316451, -0.035648, 0.129467],
    [0.314457, -0.034577, 0.130261],
    [0.312257, -0.033586, 0.130912],
    [0.309854, -0.032656, 0.131430],
    [0.307248, -0.031781, 0.131813],
    [0.304443, -0.030941, 0.132071],
    [0.301438, -0.030123, 0.132202],
    [0.298237, -0.029312, 0.132204],
    [0.294842, -0.028490, 0.132070],
    [0.291254, -0.027645, 0.131780],
    [0.287476, -0.026738, 0.131308],
    [0.283510, -0.025712, 0.130610],
    [0.279360, -0.024518, 0.129488],
    [0.275028, -0.019629, 0.124300],
    [0.270516, -0.013879, 0.117779],
    [0.265827, -0.011048, 0.113602],
    [0.260965, -0.009539, 0.110092],
    [0.255933, -0.008990, 0.106756],
    [0.250734, 0.085270, 0.008761],
    [0.245371, 0.095326, -0.006195],
    [0.239849, 0.101798, -0.018991],
    [0.234170, 0.105400, -0.030773],
    [0.228338, 0.106440, -0.042453],
    [0.222357, 0.104712, -0.055041],
    [0.216231, 0.099066, -0.070167],
    [0.209964, 0.082004, -0.095648],
    [0.203560, 0.054718, -0.130498],
    [0.197023, 0.053021, -0.139054],
    [0.190358, 0.051679, -0.146654],
    [0.183569, 0.050317, -0.153747],
    [0.176659, 0.048614, -0.160652],
    [0.169635, 0.306426, 0.092406],
    [0.162500, 0.319005, 0.100609],
    [0.155259, 0.327074, 0.104629],
    [0.147917, 0.332737, 0.106531],
    [0.140478, 0.336795, 0.107093],
    [0.132947, 0.339665, 0.106708],
    [0.125330, 0.341597, 0.105614],
    [0.117631, 0.342875, 0.104087],
    [0.109855, 0.343542, 0.102166],
    [0.102008, 0.343355, 0.099618],
    [0.094094, 0.341829, 0.095999],
    [0.086119, 0.338744, 0.089116],
    [0.078088, 0.327176, 0.069703],
    [0.070005, 0.229686, -0.036788],
    [0.061877, 0.201524, -0.072115],
    [0.053709, 0.164238, -0.113683],
    [0.045505, 0.370675, 0.091185],
    [0.037272, 0.384849, 0.106524],
    [0.029015, 0.389333, 0.114589],
    [0.020738, 0.390328, 0.120688],
    [0.012448, 0.389629, 0.125565],
    [0.004150, 0.388587, 0.128963],
    [-0.004150, 0.389071, 0.129539],
    [-0.012448, 0.391159, 0.127507],
    [-0.020738, 0.393197, 0.124267],
    [-0.029015, 0.394178, 0.120209],
    [-0.037272, 0.393005, 0.115335],
    [-0.045505, 0.387608, 0.108991],
    [-0.053709, 0.372069, 0.095191],
    [-0.061877, 0.239553, -0.033526],
    [-0.070005, 0.159981, -0.106258],
    [-0.078088, 0.154276, -0.101256],
    [-0.086119, 0.150128, -0.096785],
    [-0.094094, 0.319904, 0.075667],
    [-0.102008, 0.340485, 0.099411],
    [-0.109855, 0.345057, 0.107675],
    [-0.117631, 0.346143, 0.112974],
    [-0.125330, 0.345392, 0.116951],
    [-0.132947, 0.343439, 0.120236],
    [-0.140478, 0.340589, 0.123130],
    [-0.147917, 0.336857, 0.125651],
    [-0.155259, 0.332080, 0.127641],
    [-0.162500, 0.325989, 0.128843],
    [-0.169635, 0.318044, 0.128731],
    [-0.176659, 0.307102, 0.126196],
    [-0.183569, 0.289253, 0.117368],
    [-0.190358, 0.192982, 0.030800],
    [-0.197023, 0.097229, -0.054466],
    [-0.203560, 0.089758, -0.050501],
    [-0.209964, 0.082241, -0.045348],
    [-0.216231, 0.074258, -0.038864],
    [-0.222357, 0.103058, 0.007615],
    [-0.228338, 0.112745, 0.042059],
    [-0.234170, 0.177866, 0.110922],
    [-0.239849, 0.185291, 0.121801],
    [-0.245371, 0.188008, 0.127738],
    [-0.250734, 0.189007, 0.131765],
    [-0.255933, 0.189064, 0.134692],
    [-0.260965, 0.188573, 0.136939],
    [-0.265827, 0.187711, 0.138712],
    [-0.270516, 0.186570, 0.140129],
    [-0.275028, 0.185149, 0.141226],
    [-0.279360, 0.183398, 0.141998],
    [-0.283510, 0.181197, 0.142415],
    [-0.287476, 0.178392, 0.142545],
    [-0.291254, 0.173949, 0.143273],
    [-0.294842, 0.153124, 0.159095],
    [-0.298237, 0.148676, 0.156804],
    [-0.301438, 0.143028, 0.153275],
    [-0.304443, 0.135297, 0.147668],
    [-0.307248, 0.122702, 0.137186],
    [-0.309854, 0.065660, 0.082243],
    [-0.312257, 0.026040, 0.044700],
    [-0.314457, -0.025943, -0.005231],
    [-0.316451, -0.029991, -0.007257],
    [-0.318239, -0.034483, -0.009756],
    [-0.319819, -0.039384, -0.012702],
    [-0.321191, -0.044700, -0.016090],
    [-0.322353, -0.050423, -0.019925],
    [-0.323305, -0.056538, -0.024191],
    [-0.324046, -0.063043, -0.028896],
    [-0.324576, -0.069932, -0.034003],
    [-0.324894, -0.077218, -0.039507],
    [-0.325000, -0.084174, -0.044838],
    [-0.324894, -0.093078, -0.051404],
    [-0.324576, -0.101818, -0.057615],
    [-0.324046, -0.110850, -0.064208],
    [-0.323305, -0.120122, -0.071156],
    [-0.322353, -0.129647, -0.078441],
    [-0.321191, -0.139416, -0.086027],
    [-0.319819, -0.149406, -0.093882],
    [-0.318239, -0.159581, -0.101971],
    [-0.316451, -0.169928, -0.110249],
    [-0.314457, -0.180402, -0.118679],
    [-0.312257, -0.191005, -0.127243],
    [-0.309854, -0.202059, -0.136257],
    [-0.307248, -0.217365, -0.141198],
    [-0.304443, -0.235227, -0.142834],
    [-0.301438, -0.247593, -0.148631],
    [-0.298237, -0.257725, -0.155029],
    [-0.294842, -0.266565, -0.161024],
    [-0.291254, -0.274207, -0.166529],
    [-0.287476, -0.280703, -0.171567],
    [-0.283510, -0.289435, -0.172875],
    [-0.279360, -0.300431, -0.170527],
    [-0.275028, -0.309316, -0.168946],
    [-0.270516, -0.313939, -0.170410],
    [-0.265827, -0.316494, -0.172744],
    [-0.260965, -0.317774, -0.175284],
    [-0.255933, -0.317941, -0.177959],
    [-0.250734, -0.317509, -0.181029],
    [-0.245371, -0.316704, -0.184511],
    [-0.239849, -0.315583, -0.188266],
    [-0.234170, -0.314182, -0.192169],
    [-0.228338, -0.312530, -0.196107],
    [-0.222357, -0.310655, -0.199993],
    [-0.216231, -0.308606, -0.203774],
    [-0.209964, -0.306424, -0.207409],
    [-0.203560, -0.304157, -0.210876],
    [-0.197023, -0.301852, -0.214164],
    [-0.190358, -0.299542, -0.217258],
    [-0.183569, -0.297268, -0.220157],
    [-0.176659, -0.295052, -0.222851],
    [-0.169635, -0.292921, -0.225341],
    [-0.162500, -0.290887, -0.227627],
    [-0.155259, -0.288930, -0.229741],
    [-0.147917, -0.287049, -0.231701],
    [-0.140478, -0.285242, -0.233513],
    [-0.132947, -0.283512, -0.235185],
    [-0.125330, -0.281862, -0.236719],
    [-0.117631, -0.280296, -0.238120],
    [-0.109855, -0.278818, -0.239386],
    [-0.102008, -0.277435, -0.240517],
    [-0.094094, -0.276153, -0.241508],
    [-0.086119, -0.274983, -0.242355],
    [-0.078088, -0.273937, -0.243049],
    [-0.070005, -0.273033, -0.243579],
    [-0.061877, -0.272286, -0.243923],
    [-0.053709, -0.271722, -0.244050],
    [-0.045505, -0.271344, -0.243953],
    [-0.037272, -0.271061, -0.243714],
    [-0.029015, -0.270861, -0.243337],
    [-0.020738, -0.270741, -0.242814],
    [-0.012448, -0.270702, -0.242133],
    [-0.004150, -0.270740, -0.241280],
    [0.004150, -0.270854, -0.240238],
    [0.012448, -0.271043, -0.238984],
    [0.020738, -0.271305, -0.237490],
    [0.029015, -0.271642, -0.235720],
    [0.037272, -0.272053, -0.233627],
    [0.045505, -0.272543, -0.231152],
    [0.053709, -0.273121, -0.228212],
    [0.061877, -0.273813, -0.224702],
    [0.070005, -0.274684, -0.220469],
    [0.078088, -0.276563, -0.214594],
    [0.086119, -0.281970, -0.204463],
    [0.094094, -0.288549, -0.192406],
    [0.102008, -0.295319, -0.179408],
    [0.109855, -0.301876, -0.165972],
    [0.117631, -0.307974, -0.152486],
    [0.125330, -0.313234, -0.139223],
    [0.132947, -0.317168, -0.126640],
    [0.140478, -0.318878, -0.115893],
    [0.147917, -0.341820, -0.083669],
    [0.155259, -0.337812, -0.078240],
    [0.162500, -0.331628, -0.074885],
    [0.169635, -0.325340, -0.071581],
    [0.176659, -0.321057, -0.066243],
    [0.183569, -0.321264, -0.056411],
    [0.190358, -0.321845, -0.046218],
    [0.197023, -0.318936, -0.039532],
    [0.203560, -0.313517, -0.035375],
    [0.209964, -0.304999, -0.034324],
    [0.216231, -0.294655, -0.035067],
    [0.222357, -0.287431, -0.032542],
    [0.228338, -0.282614, -0.027089],
    [0.234170, -0.279027, -0.019600],
    [0.239849, -0.275013, -0.011753],
    [0.245371, -0.269448, -0.004728],
    [0.250734, -0.262139, 0.001144],
    [0.255933, -0.252681, 0.005244],
    [0.260965, -0.222768, -0.011026],
    [0.265827, -0.212999, -0.007420],
    [0.270516, -0.202220, -0.005438],
    [0.275028, -0.192566, -0.003237],
    [0.279360, -0.187022, 0.001977],
    [0.283510, -0.181926, 0.006468],
    [0.287476, -0.177273, 0.010317],
    [0.291254, -0.172902, 0.013736],
    [0.294842, -0.168769, 0.016797],
    [0.298237, -0.164857, 0.019549],
    [0.301438, -0.161146, 0.022030],
    [0.304443, -0.157621, 0.024268],
    [0.307248, -0.154272, 0.026291],
    [0.309854, -0.151087, 0.028118],
    [0.312257, -0.148059, 0.029773],
    [0.314457, -0.145177, 0.031272],
    [0.316451, -0.142438, 0.032634],
    [0.318239, -0.139840, 0.033869],
    [0.319819, -0.137360, 0.035010],
    [0.321191, -0.135012, 0.036060],
    [0.322353, -0.132794, 0.037052],
    [0.323305, -0.130638, 0.038076],
    [0.324046, -0.128477, 0.039249],
    [0.324576, -0.126060, 0.040871],
    [0.324894, -0.123237, 0.042986],
    [0.325000, -0.120137, 0.045726],
    [0.325000, -0.120137, 0.045726]
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
