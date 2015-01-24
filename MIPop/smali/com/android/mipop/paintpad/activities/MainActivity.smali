.class public Lcom/android/mipop/paintpad/activities/MainActivity;
.super Landroid/app/Activity;


# instance fields
.field private aj:Landroid/widget/Button;

.field private ak:Landroid/widget/Button;

.field private am:Landroid/widget/Button;

.field private at:Landroid/widget/Button;

.field private c:F

.field private d:F

.field private density:F

.field private eA:Z

.field private eB:Landroid/graphics/Bitmap;

.field private eC:J

.field private eD:Landroid/widget/Toast;

.field private eE:Z

.field private eF:Lcom/android/mipop/paintpad/activities/j;

.field private eG:Landroid/content/IntentFilter;

.field eH:Landroid/view/View$OnClickListener;

.field eI:Landroid/view/View$OnTouchListener;

.field eJ:Landroid/view/View$OnTouchListener;

.field eK:Landroid/view/View$OnClickListener;

.field eL:Landroid/view/View$OnClickListener;

.field eM:Landroid/view/View$OnClickListener;

.field eN:Landroid/view/View$OnClickListener;

.field eO:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field eP:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field eQ:Lcom/android/mipop/paintpad/view/b;

.field eR:Landroid/view/View$OnClickListener;

.field private ed:Landroid/util/SparseArray;

.field private ee:Lcom/android/mipop/paintpad/view/ColorPickerView;

.field private ef:Lcom/android/mipop/paintpad/view/PenPreview;

.field private eg:[Landroid/widget/Button;

.field private eh:Landroid/widget/Button;

.field private ei:[Landroid/widget/Button;

.field private ej:Landroid/widget/Button;

.field private ek:[Landroid/widget/Button;

.field private el:I

.field private em:Landroid/widget/Button;

.field private en:Landroid/widget/Button;

.field private eo:Landroid/widget/Button;

.field private ep:Landroid/widget/Button;

.field private eq:Lcom/android/mipop/paintpad/view/PaintPad;

.field private er:Landroid/widget/ImageView;

.field private es:Landroid/widget/ImageView;

.field private et:Landroid/widget/LinearLayout;

.field private eu:Landroid/widget/LinearLayout;

.field private ev:Landroid/widget/LinearLayout;

.field private ew:Landroid/widget/TextView;

.field private ex:Landroid/widget/SeekBar;

.field private ey:Landroid/widget/SeekBar;

.field private ez:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eg:[Landroid/widget/Button;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ek:[Landroid/widget/Button;

    iput-boolean v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ez:Z

    iput-boolean v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eA:Z

    iput-boolean v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eE:Z

    new-instance v0, Lcom/android/mipop/paintpad/activities/j;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/j;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eF:Lcom/android/mipop/paintpad/activities/j;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eG:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/mipop/paintpad/activities/g;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/g;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eH:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mipop/paintpad/activities/h;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/h;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eI:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mipop/paintpad/activities/i;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/i;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eJ:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mipop/paintpad/activities/a;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/a;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eK:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mipop/paintpad/activities/b;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/b;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eL:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mipop/paintpad/activities/c;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/c;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eM:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mipop/paintpad/activities/d;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/d;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eN:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mipop/paintpad/activities/e;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/e;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eO:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/android/mipop/paintpad/activities/f;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/f;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eP:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/android/mipop/paintpad/activities/m;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/m;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eQ:Lcom/android/mipop/paintpad/view/b;

    new-instance v0, Lcom/android/mipop/paintpad/activities/l;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/l;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eR:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private Z()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c006d

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f02006c

    const v4, 0x7f020074

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c006e

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f02006e

    const v4, 0x7f020076

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c006f

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020069

    const v4, 0x7f020071

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c0070

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020068

    const v4, 0x7f020070

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c0071

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f02006a

    const v4, 0x7f020072

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c0072

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f02006d

    const v4, 0x7f020075

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c0073

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020067

    const v4, 0x7f02006f

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c0074

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f02006b

    const v4, 0x7f020073

    const/4 v5, -0x1

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c0067

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020085

    const v4, 0x7f02008b

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c0068

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020083

    const v4, 0x7f020089

    const/4 v5, 0x1

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c0069

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020087

    const v4, 0x7f02008d

    const/4 v5, 0x2

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c006a

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020082

    const v4, 0x7f020088

    const/4 v5, 0x4

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c006b

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020084

    const v4, 0x7f02008a

    const/4 v5, 0x3

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c006c

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020086

    const v4, 0x7f02008c

    const/4 v5, 0x5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c005c

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020079

    const v4, 0x7f02003c

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c005d

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f020080

    const v4, 0x7f020042

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c005e

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f02007b

    const v4, 0x7f02003d

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    const v1, 0x7f0c005f

    new-instance v2, Lcom/android/mipop/paintpad/activities/k;

    const v3, 0x7f02007d

    const v4, 0x7f02003f

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/k;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mipop/paintpad/activities/MainActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->c:F

    return p1
.end method

.method static synthetic a(Lcom/android/mipop/paintpad/activities/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->el:I

    return p1
.end method

.method static synthetic a(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ej:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->ac()V

    return-void
.end method

.method static synthetic a(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eE:Z

    return p1
.end method

.method private aa()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/view/ColorPickerView;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ee:Lcom/android/mipop/paintpad/view/ColorPickerView;

    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eo:Landroid/widget/Button;

    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ak:Landroid/widget/Button;

    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->aj:Landroid/widget/Button;

    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->am:Landroid/widget/Button;

    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->en:Landroid/widget/Button;

    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->em:Landroid/widget/Button;

    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ep:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eg:[Landroid/widget/Button;

    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eg:[Landroid/widget/Button;

    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eg:[Landroid/widget/Button;

    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v5

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eg:[Landroid/widget/Button;

    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v6

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v5

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v6

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v7

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const/4 v2, 0x5

    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const/4 v2, 0x6

    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const/4 v2, 0x7

    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ek:[Landroid/widget/Button;

    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ek:[Landroid/widget/Button;

    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ek:[Landroid/widget/Button;

    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v5

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ek:[Landroid/widget/Button;

    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v6

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ek:[Landroid/widget/Button;

    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v7

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ek:[Landroid/widget/Button;

    const/4 v2, 0x5

    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    const v0, 0x7f0c0059

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->et:Landroid/widget/LinearLayout;

    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eu:Landroid/widget/LinearLayout;

    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ev:Landroid/widget/LinearLayout;

    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->er:Landroid/widget/ImageView;

    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->es:Landroid/widget/ImageView;

    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ex:Landroid/widget/SeekBar;

    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ey:Landroid/widget/SeekBar;

    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/view/PaintPad;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eq:Lcom/android/mipop/paintpad/view/PaintPad;

    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ew:Landroid/widget/TextView;

    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/view/PenPreview;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ef:Lcom/android/mipop/paintpad/view/PenPreview;

    return-void
.end method

.method private ab()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->er:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eK:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eL:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eg:[Landroid/widget/Button;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eN:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ek:[Landroid/widget/Button;

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eR:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->aj:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ak:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->am:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->en:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->em:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ey:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eP:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ex:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eO:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eq:Lcom/android/mipop/paintpad/view/PaintPad;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eJ:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/view/PaintPad;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->et:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eI:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ee:Lcom/android/mipop/paintpad/view/ColorPickerView;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eQ:Lcom/android/mipop/paintpad/view/b;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->a(Lcom/android/mipop/paintpad/view/b;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ep:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private ac()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eq:Lcom/android/mipop/paintpad/view/PaintPad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/view/PaintPad;->a(Z)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->et:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eA:Z

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->er:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private ad()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eA:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eq:Lcom/android/mipop/paintpad/view/PaintPad;

    invoke-virtual {v0, v2}, Lcom/android/mipop/paintpad/view/PaintPad;->a(Z)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->et:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eA:Z

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->er:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private ae()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eA:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->ac()V

    :goto_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ef:Lcom/android/mipop/paintpad/view/PenPreview;

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->ad()V

    goto :goto_0
.end method

.method private af()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, -0x3d3d3e

    const v1, -0x828283

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eq:Lcom/android/mipop/paintpad/view/PaintPad;

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->em:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->em:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eq:Lcom/android/mipop/paintpad/view/PaintPad;

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->en:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->en:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->em:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->em:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->en:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->en:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private ag()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ev:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private ah()V
    .locals 2

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eu:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ev:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/mipop/paintpad/activities/MainActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->c:F

    return v0
.end method

.method static synthetic b(Lcom/android/mipop/paintpad/activities/MainActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->d:F

    return p1
.end method

.method static synthetic b(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eh:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic b(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ez:Z

    return p1
.end method

.method static synthetic c(Lcom/android/mipop/paintpad/activities/MainActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->d:F

    return v0
.end method

.method static synthetic c(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->at:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic d(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->em:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->en:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->ae()V

    return-void
.end method

.method static synthetic g(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ej:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic i(Lcom/android/mipop/paintpad/activities/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ez:Z

    return v0
.end method

.method private init()V
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/high16 v5, 0x40e0

    const/high16 v4, 0x4000

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ed:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bl()Lcom/android/mipop/paintpad/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/b/b;->reset()V

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->Z()V

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->aa()V

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->ab()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ei:[Landroid/widget/Button;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ej:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eg:[Landroid/widget/Button;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eh:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ek:[Landroid/widget/Button;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->at:Landroid/widget/Button;

    iput v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->el:I

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->et:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    mul-float/2addr v0, v4

    mul-float/2addr v0, v5

    invoke-static {v0}, Lcom/android/mipop/paintpad/b/b;->c(F)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->es:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    mul-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bm()Lcom/android/mipop/paintpad/b/b;

    move-result-object v0

    iget v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    mul-float/2addr v1, v4

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ef:Lcom/android/mipop/paintpad/view/PenPreview;

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f070004

    const/16 v1, 0x7d0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eD:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic j(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PenPreview;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ef:Lcom/android/mipop/paintpad/view/PenPreview;

    return-object v0
.end method

.method static synthetic k(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->quit()V

    return-void
.end method

.method static synthetic l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eq:Lcom/android/mipop/paintpad/view/PaintPad;

    return-object v0
.end method

.method static synthetic m(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->af()V

    return-void
.end method

.method static synthetic n(Lcom/android/mipop/paintpad/activities/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->el:I

    return v0
.end method

.method static synthetic o(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eh:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic p(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->ag()V

    return-void
.end method

.method static synthetic q(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->ew:Landroid/widget/TextView;

    return-object v0
.end method

.method private quit()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eA:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->ac()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eE:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eC:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eD:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eD:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eC:J

    goto :goto_0
.end method

.method static synthetic r(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->ah()V

    return-void
.end method

.method static synthetic s(Lcom/android/mipop/paintpad/activities/MainActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    return v0
.end method

.method static synthetic t(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->es:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic u(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->at:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x64

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eF:Lcom/android/mipop/paintpad/activities/j;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eG:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CropScreenAndPaint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/mipop/cropimage/n;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/n;->start()V

    sget-object v0, Lcom/android/mipop/cropimage/n;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eB:Landroid/graphics/Bitmap;

    const-string v0, "csx"

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eB:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "csx"

    const-string v1, "boolean"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->init()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eq:Lcom/android/mipop/paintpad/view/PaintPad;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eB:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/view/PaintPad;->a(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/mipop/cropimage/CropImageEx;->az:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eB:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eB:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->eF:Lcom/android/mipop/paintpad/activities/j;

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->ae()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->quit()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->quit()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
