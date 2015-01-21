.class public Lcom/zte/heartyservice/intercept/Common/GridInfo;
.super Ljava/lang/Object;
.source "GridInfo.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/GridInfo;->name:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/GridInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/GridInfo;->name:Ljava/lang/String;

    .line 19
    return-void
.end method
