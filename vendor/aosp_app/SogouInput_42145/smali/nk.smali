.class Lnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Lni;

.field final synthetic a:Lno;


# direct methods
.method constructor <init>(Lni;Lno;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lnk;->a:Lni;

    iput-object p2, p0, Lnk;->a:Lno;

    iput-object p3, p0, Lnk;->a:Ljava/lang/Integer;

    iput-object p4, p0, Lnk;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lnk;->a:Lno;

    iget-object v1, p0, Lnk;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lnk;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lno;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 122
    return-void
.end method
