.class Lahz;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lahy;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lahy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lahz;->a:Lahy;

    iput-object p2, p0, Lahz;->a:Ljava/lang/String;

    iput-object p3, p0, Lahz;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lahz;->a:Ljava/lang/String;

    iget-object v1, p0, Lahz;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lahr;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 105
    return-void
.end method
