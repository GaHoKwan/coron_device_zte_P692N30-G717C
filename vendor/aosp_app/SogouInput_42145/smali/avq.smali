.class Lavq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public a:Landroid/graphics/Rect;

.field final synthetic a:Lavo;

.field public a:Ljava/lang/String;

.field public a:[I

.field public b:Landroid/graphics/Bitmap;

.field public b:Landroid/graphics/Rect;

.field public b:Ljava/lang/String;

.field public b:[I


# direct methods
.method private constructor <init>(Lavo;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 584
    iput-object p1, p0, Lavq;->a:Lavo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object v0, p0, Lavq;->a:Ljava/lang/String;

    .line 586
    iput-object v0, p0, Lavq;->a:Landroid/graphics/Bitmap;

    .line 587
    iput-object v0, p0, Lavq;->b:Landroid/graphics/Bitmap;

    .line 588
    iput-object v0, p0, Lavq;->b:Ljava/lang/String;

    .line 589
    iput-object v0, p0, Lavq;->a:[I

    .line 590
    iput-object v0, p0, Lavq;->b:[I

    .line 591
    iput-object v0, p0, Lavq;->a:Landroid/graphics/Rect;

    .line 592
    iput-object v0, p0, Lavq;->b:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lavo;Lavp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lavq;-><init>(Lavo;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 602
    iput-object v0, p0, Lavq;->a:Landroid/graphics/Bitmap;

    .line 603
    iput-object v0, p0, Lavq;->a:[I

    .line 604
    iput-object v0, p0, Lavq;->b:[I

    .line 605
    iput-object v0, p0, Lavq;->a:Landroid/graphics/Rect;

    .line 606
    iput-object v0, p0, Lavq;->b:Landroid/graphics/Rect;

    .line 607
    return-void
.end method
