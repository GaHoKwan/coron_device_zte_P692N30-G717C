.class Ljl;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljf;


# direct methods
.method constructor <init>(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Ljl;->a:Ljf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Ljl;->a:Ljf;

    invoke-static {v0}, Ljf;->h(Ljf;)V

    .line 1160
    iget-object v0, p0, Ljl;->a:Ljf;

    const-string v1, "refreshing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Ljf;->a(Ljf;Ljava/lang/String;)V

    .line 1161
    return-void
.end method
