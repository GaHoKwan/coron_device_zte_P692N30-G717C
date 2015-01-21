.class Lane;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lanb;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lane;->a:Lanb;

    iput-object p2, p0, Lane;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lane;->a:Ljava/lang/String;

    invoke-static {v0}, Laky;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 291
    return-void
.end method
