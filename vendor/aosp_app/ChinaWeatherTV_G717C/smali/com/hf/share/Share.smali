.class public abstract Lcom/hf/share/Share;
.super Ljava/lang/Object;
.source "Share.java"


# instance fields
.field public iconId:I

.field public mContext:Landroid/content/Context;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/hf/share/Share;->mContext:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method public abstract imageShare(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract messageShare(Ljava/lang/String;)V
.end method
