.class Ltmsdkobf/lc$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/lc$b;->bQ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BE:Ljava/lang/String;

.field final synthetic BF:Ltmsdkobf/lc$b;


# direct methods
.method constructor <init>(Ltmsdkobf/lc$b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Ltmsdkobf/lc$b$2;->BF:Ltmsdkobf/lc$b;

    iput-object p2, p0, Ltmsdkobf/lc$b$2;->BE:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Ltmsdkobf/lc$b$2;->BF:Ltmsdkobf/lc$b;

    invoke-static {v0}, Ltmsdkobf/lc$b;->a(Ltmsdkobf/lc$b;)Ltmsdkobf/la;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/lc$b$2;->BE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltmsdkobf/la;->bQ(Ljava/lang/String;)V

    .line 226
    return-void
.end method
