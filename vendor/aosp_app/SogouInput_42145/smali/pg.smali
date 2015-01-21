.class Lpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Lpc;

.field final synthetic a:Lpi;


# direct methods
.method constructor <init>(Lpc;Lpi;Ljava/lang/Integer;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lpg;->a:Lpc;

    iput-object p2, p0, Lpg;->a:Lpi;

    iput-object p3, p0, Lpg;->a:Ljava/lang/Integer;

    iput-object p4, p0, Lpg;->a:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lpg;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lpg;->a:Lpi;

    iget-object v1, p0, Lpg;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lpg;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lpg;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lpi;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 156
    return-void
.end method
