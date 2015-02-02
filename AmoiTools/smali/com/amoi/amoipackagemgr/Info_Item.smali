.class public Lcom/amoi/amoipackagemgr/Info_Item;
.super Ljava/lang/Object;
.source "Info_Item.java"


# instance fields
.field private mLable:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mResicon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "name"
    .parameter "Lable"
    .parameter "icon"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amoi/amoipackagemgr/Info_Item;->mName:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/amoi/amoipackagemgr/Info_Item;->mResicon:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object p2, p0, Lcom/amoi/amoipackagemgr/Info_Item;->mLable:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getLable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/Info_Item;->mLable:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/Info_Item;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/Info_Item;->mResicon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setLable(Ljava/lang/String;)V
    .locals 0
    .parameter "lable"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/amoi/amoipackagemgr/Info_Item;->mLable:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/amoi/amoipackagemgr/Info_Item;->mName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setResId(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amoi/amoipackagemgr/Info_Item;->mResicon:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method
