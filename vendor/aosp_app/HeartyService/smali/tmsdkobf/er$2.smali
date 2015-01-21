.class final Ltmsdkobf/er$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/er;->ap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lo:Ltmsdkobf/er;


# direct methods
.method constructor <init>(Ltmsdkobf/er;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Ltmsdkobf/er$2;->lo:Ltmsdkobf/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Ltmsdkobf/er$2;->lo:Ltmsdkobf/er;

    invoke-virtual {v0}, Ltmsdkobf/er;->aO()Z

    .line 319
    return-void
.end method
