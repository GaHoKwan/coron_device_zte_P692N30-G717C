.class Laht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lahr;

.field final synthetic a:Lahx;

.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic a:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lahr;Lahx;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Laht;->a:Lahr;

    iput-object p2, p0, Laht;->a:Lahx;

    iput-object p3, p0, Laht;->a:Ljava/lang/Integer;

    iput-object p4, p0, Laht;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Laht;->a:Lahx;

    iget-object v1, p0, Laht;->a:Ljava/lang/Integer;

    iget-object v2, p0, Laht;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lahx;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 130
    return-void
.end method
