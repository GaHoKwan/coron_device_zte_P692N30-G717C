.class public Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "MemoryOptimizeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mList:Landroid/widget/ListView;

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mValues:[I

    return-object v0
.end method

.method private getIdByValue(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mValues:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mValues:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 103
    .end local v0           #i:I
    :goto_1
    return v0

    .line 98
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 89
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mList:Landroid/widget/ListView;

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 84
    const-string v0, "hs_memory_optimize"

    invoke-static {v0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 85
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->setEnable(Z)V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x10

    const/4 v5, -0x2

    .line 30
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300e2

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 34
    .local v1, rightOfActionBar:Landroid/view/View;
    const v2, 0x7f0e032a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v2, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 37
    iget-object v2, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v2, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    const v2, 0x7f0a00a7

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v2, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 41
    iget-object v2, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->actionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 42
    iget-object v2, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->actionBar:Landroid/app/ActionBar;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 47
    const v2, 0x7f0300f0

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->initView()V

    .line 49
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f070064

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mEntries:[Ljava/lang/CharSequence;

    .line 51
    const v2, 0x7f070065

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mValues:[I

    .line 52
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 56
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 58
    const-string v3, "hs_memory_optimize"

    invoke-static {v3}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v1

    .line 59
    .local v1, enable:Z
    iget-object v3, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v3, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 61
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0300f9

    iget-object v4, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 62
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 63
    iget-object v3, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v3, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mList:Landroid/widget/ListView;

    new-instance v4, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings$1;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings$1;-><init>(Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    const-string v3, "hs_memory_optimize_data"

    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSettingInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->getIdByValue(I)I

    move-result v2

    .line 75
    .local v2, id:I
    if-ltz v2, :cond_0

    .line 76
    iget-object v3, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 79
    :cond_0
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->setEnable(Z)V

    .line 80
    return-void
.end method
