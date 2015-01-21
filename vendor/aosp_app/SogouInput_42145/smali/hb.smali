.class Lhb;
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
    .line 148
    iput-object p1, p0, Lhb;->a:Lgy;

    iput-object p2, p0, Lhb;->a:Lhd;

    iput-object p3, p0, Lhb;->a:Ljava/lang/String;

    iput-object p4, p0, Lhb;->a:Ljava/lang/Integer;

    iput-object p5, p0, Lhb;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lhb;->a:Lhd;

    iget-object v1, p0, Lhb;->a:Ljava/lang/String;

    iget-object v2, p0, Lhb;->a:Ljava/lang/Integer;

    iget-object v3, p0, Lhb;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lhd;->a(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 151
    return-void
.end method
