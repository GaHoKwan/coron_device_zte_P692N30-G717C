.class public Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;
.super Ljava/lang/Object;
.source "PreferenceAdapterModel.java"


# instance fields
.field private canExpand:Z

.field private entries:[Ljava/lang/String;

.field private entryValues:[Ljava/lang/String;

.field private icons:[I

.field private isOnCheckedNoClick:Z

.field private mTagKey:B

.field private preferenceViewType:B

.field private selectItemIndex:I

.field private summary:Ljava/lang/String;

.field private titlBG_ID:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->canExpand:Z

    return-void
.end method


# virtual methods
.method public canExpand()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->canExpand:Z

    return v0
.end method

.method public getChecked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 33
    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    if-gez v0, :cond_1

    .line 95
    :cond_0
    const-string v0, ""

    .line 97
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getEntryValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    if-gez v0, :cond_1

    .line 87
    :cond_0
    const-string v0, ""

    .line 89
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->icons:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->icons:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    if-gez v0, :cond_1

    .line 103
    :cond_0
    const/4 v0, -0x1

    .line 105
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->icons:[I

    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getIcons()[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->icons:[I

    return-object v0
.end method

.method public getPreferenceViewType()B
    .locals 1

    .prologue
    .line 47
    iget-byte v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->preferenceViewType:B

    return v0
.end method

.method public getSelectItemIndex()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTagKey()B
    .locals 1

    .prologue
    .line 120
    iget-byte v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->mTagKey:B

    return v0
.end method

.method public getTitlBG_ID()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->titlBG_ID:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isOnCheckedNoClick()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->isOnCheckedNoClick:Z

    return v0
.end method

.method public setCanExpand(Z)V
    .locals 0
    .parameter "canExpand"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->canExpand:Z

    .line 52
    return-void
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 0
    .parameter "entryValues"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setIcons([I)V
    .locals 0
    .parameter "icons"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->icons:[I

    .line 72
    return-void
.end method

.method public setOnCheckedNoClick(Z)V
    .locals 0
    .parameter "isOnCheckedNoClick"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->isOnCheckedNoClick:Z

    .line 111
    return-void
.end method

.method public setPreferenceViewType(B)V
    .locals 0
    .parameter "preferenceViewType"

    .prologue
    .line 44
    iput-byte p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->preferenceViewType:B

    .line 45
    return-void
.end method

.method public setSelectItemIndex(I)V
    .locals 0
    .parameter "selectItemIndex"

    .prologue
    .line 78
    iput p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->selectItemIndex:I

    .line 79
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->summary:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setTagKey(B)V
    .locals 0
    .parameter "tagKey"

    .prologue
    .line 117
    iput-byte p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->mTagKey:B

    .line 118
    return-void
.end method

.method public setTitlBG_ID(I)V
    .locals 0
    .parameter "titlBG_ID"

    .prologue
    .line 124
    iput p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->titlBG_ID:I

    .line 125
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->title:Ljava/lang/String;

    .line 27
    return-void
.end method
