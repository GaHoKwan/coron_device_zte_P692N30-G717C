.class public Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;
.super Ljava/lang/Object;
.source "AbstractApkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IntentFilterArray"
.end annotation


# instance fields
.field private mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScheme:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->mActionList:Ljava/util/List;

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "scheme"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->mActionList:Ljava/util/List;

    .line 151
    iput-object p2, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->mScheme:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->mActionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public getAction(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->mActionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActionNumber()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->mActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .parameter "scheme"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->mScheme:Ljava/lang/String;

    .line 162
    return-void
.end method
