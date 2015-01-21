.class Lhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic a:Lgy;

.field final synthetic a:Lhd;

.field final synthetic a:Ljava/lang/Integer;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgy;Lhd;Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lhc;->a:Lgy;

    iput-object p2, p0, Lhc;->a:Lhd;

    iput-object p3, p0, Lhc;->a:Ljava/lang/String;

    iput-object p4, p0, Lhc;->a:Ljava/lang/Integer;

    iput-object p5, p0, Lhc;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lhc;->a:Lhd;

    iget-object v1, p0, Lhc;->a:Ljava/lang/String;

    iget-object v2, p0, Lhc;->a:Ljava/lang/Integer;

    iget-object v3, p0, Lhc;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lhd;->a(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 164
    return-void
.end method
