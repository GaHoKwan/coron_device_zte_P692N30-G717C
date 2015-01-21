.class Lwq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Lwo;

.field final synthetic a:Lwu;


# direct methods
.method constructor <init>(Lwo;Lwu;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lwq;->a:Lwo;

    iput-object p2, p0, Lwq;->a:Lwu;

    iput-object p3, p0, Lwq;->a:Ljava/lang/Integer;

    iput-object p4, p0, Lwq;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lwq;->a:Lwu;

    iget-object v1, p0, Lwq;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lwq;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lwu;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 123
    return-void
.end method
