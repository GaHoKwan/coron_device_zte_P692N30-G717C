.class public Lcom/dolby/ds1appUI/FragPower;
.super Landroid/app/Fragment;
.source "FragPower.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragPower"


# instance fields
.field private mDsClient:Landroid/dolby/DsClient;

.field private mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

.field private mImgoff:Landroid/widget/ImageView;

.field private mImgon:Landroid/widget/ImageView;

.field private mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragPowerObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragPower;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragPowerObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragPower;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragPowerObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragPower;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/ds1appUI/IDsFragObserver;->getDsClient()Landroid/dolby/DsClient;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragPower;->mDsClient:Landroid/dolby/DsClient;

    .line 65
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 59
    .restart local v1       #e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragPowerObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 92
    .local v1, id:I
    const v5, 0x7f0a000f

    if-eq v5, v1, :cond_0

    const v5, 0x7f0a000e

    if-ne v5, v1, :cond_1

    .line 94
    :cond_0
    :try_start_0
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v5}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v4

    .line 95
    .local v2, on:Z
    :goto_0
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragPower;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v2}, Landroid/dolby/DsClient;->setDsOnChecked(Z)I

    move-result v3

    .line 97
    .local v3, result:I
    if-eqz v3, :cond_3

    .line 98
    const-string v4, "FragPower"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FragPower.onClick, setDsOnChecked failed due to return code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v2           #on:Z
    .end local v3           #result:I
    :cond_1
    :goto_1
    return-void

    .line 94
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    .restart local v2       #on:Z
    .restart local v3       #result:I
    :cond_3
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragPower;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6}, Landroid/dolby/DsClient;->getDsOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->cacheDsOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragPower;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragPowerObserver;

    invoke-interface {v5, v4}, Lcom/dolby/ds1appUI/IDsFragPowerObserver;->onDsClientUseChanged(Z)V

    goto :goto_1

    .line 104
    .end local v2           #on:Z
    .end local v3           #result:I
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragPower;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 78
    const v1, 0x7f030004

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dolby/ds1appUI/FragPower;->mImgon:Landroid/widget/ImageView;

    .line 80
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dolby/ds1appUI/FragPower;->mImgoff:Landroid/widget/ImageView;

    .line 81
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragPower;->mImgon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragPower;->mImgon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 83
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragPower;->mImgoff:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragPower;->mImgoff:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 85
    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragPower;->mImgon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
