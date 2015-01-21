.class Lavn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Landroid/graphics/Bitmap;

.field public a:Landroid/graphics/Rect;

.field final synthetic a:Lavj;

.field public a:Ljava/lang/String;

.field public a:[I

.field public b:I

.field public b:Landroid/graphics/Bitmap;

.field public b:Landroid/graphics/Rect;

.field public b:Ljava/lang/String;

.field public b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method private constructor <init>(Lavj;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    iput-object p1, p0, Lavn;->a:Lavj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lavn;->a:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lavn;->a:Landroid/graphics/Bitmap;

    .line 53
    iput-object v0, p0, Lavn;->b:Landroid/graphics/Bitmap;

    .line 54
    iput-object v0, p0, Lavn;->b:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lavn;->a:[I

    .line 56
    iput-object v0, p0, Lavn;->b:[I

    .line 57
    iput-object v0, p0, Lavn;->a:Landroid/graphics/Rect;

    .line 58
    iput-object v0, p0, Lavn;->b:Landroid/graphics/Rect;

    .line 67
    iput v1, p0, Lavn;->f:I

    .line 68
    iput v1, p0, Lavn;->g:I

    .line 69
    iput v1, p0, Lavn;->h:I

    .line 70
    iput v1, p0, Lavn;->i:I

    return-void
.end method

.method synthetic constructor <init>(Lavj;Lavk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lavn;-><init>(Lavj;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lavn;->a:Landroid/graphics/Bitmap;

    .line 74
    iput-object v0, p0, Lavn;->a:[I

    .line 75
    iput-object v0, p0, Lavn;->b:[I

    .line 76
    iput-object v0, p0, Lavn;->a:Landroid/graphics/Rect;

    .line 77
    iput-object v0, p0, Lavn;->b:Landroid/graphics/Rect;

    .line 78
    return-void
.end method
