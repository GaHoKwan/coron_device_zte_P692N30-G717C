.class public Lcom/amoi/amoitools/install/Apk_Item;
.super Ljava/lang/Object;
.source "Apk_Item.java"


# instance fields
.field private as:Lcom/amoi/amoitools/install/AppSnippet;

.field private mIsSelect:Z

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/amoi/amoitools/install/AppSnippet;)V
    .locals 2
    .parameter "name"
    .parameter "path"
    .parameter "status"
    .parameter "as"

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/amoi/amoitools/install/Apk_Item;->mIsSelect:Z

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/amoitools/install/Apk_Item;->as:Lcom/amoi/amoitools/install/AppSnippet;

    .line 11
    iput-object p1, p0, Lcom/amoi/amoitools/install/Apk_Item;->mName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/amoi/amoitools/install/Apk_Item;->mPath:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/amoi/amoitools/install/Apk_Item;->mStatus:I

    .line 14
    iput-object p4, p0, Lcom/amoi/amoitools/install/Apk_Item;->as:Lcom/amoi/amoitools/install/AppSnippet;

    .line 15
    iput-boolean v1, p0, Lcom/amoi/amoitools/install/Apk_Item;->mIsSelect:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getAppSnippet()Lcom/amoi/amoitools/install/AppSnippet;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amoi/amoitools/install/Apk_Item;->as:Lcom/amoi/amoitools/install/AppSnippet;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amoi/amoitools/install/Apk_Item;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amoi/amoitools/install/Apk_Item;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSelect()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/amoi/amoitools/install/Apk_Item;->mIsSelect:Z

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/amoi/amoitools/install/Apk_Item;->mStatus:I

    return v0
.end method

.method public setAppSnippet(Lcom/amoi/amoitools/install/AppSnippet;)V
    .locals 0
    .parameter "as"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amoi/amoitools/install/Apk_Item;->as:Lcom/amoi/amoitools/install/AppSnippet;

    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/amoi/amoitools/install/Apk_Item;->mName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amoi/amoitools/install/Apk_Item;->mPath:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .parameter "isSelect"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/amoi/amoitools/install/Apk_Item;->mIsSelect:Z

    .line 48
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 39
    iput p1, p0, Lcom/amoi/amoitools/install/Apk_Item;->mStatus:I

    .line 40
    return-void
.end method
