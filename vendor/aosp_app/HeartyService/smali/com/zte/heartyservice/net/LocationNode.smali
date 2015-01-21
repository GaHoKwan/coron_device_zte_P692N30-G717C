.class public Lcom/zte/heartyservice/net/LocationNode;
.super Ljava/lang/Object;
.source "LocationNode.java"


# instance fields
.field public mCity:Lcom/zte/heartyservice/net/CodeNameItem;

.field public mProvince:Lcom/zte/heartyservice/net/CodeNameItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/zte/heartyservice/net/LocationNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    .line 9
    iput-object v0, p0, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v0, v0, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    .line 16
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
