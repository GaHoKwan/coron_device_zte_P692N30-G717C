.class Lne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Lnb;

.field final synthetic a:Lng;


# direct methods
.method constructor <init>(Lnb;Lng;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lne;->a:Lnb;

    iput-object p2, p0, Lne;->a:Lng;

    iput-object p3, p0, Lne;->a:Ljava/lang/Integer;

    iput-object p4, p0, Lne;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lne;->a:Lng;

    iget-object v1, p0, Lne;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lne;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lng;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 138
    return-void
.end method
