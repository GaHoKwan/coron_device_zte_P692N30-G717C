.class Lyu;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Lyt;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lyt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lyu;->a:Lyt;

    iput-object p2, p0, Lyu;->a:Ljava/lang/String;

    iput-object p3, p0, Lyu;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lyu;->a:Ljava/lang/String;

    iget-object v1, p0, Lyu;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lwo;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method
