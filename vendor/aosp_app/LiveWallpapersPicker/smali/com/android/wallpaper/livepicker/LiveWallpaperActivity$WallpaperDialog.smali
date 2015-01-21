.class public Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;
.super Landroid/app/DialogFragment;
.source "LiveWallpaperActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperDialog"
.end annotation


# static fields
.field private static final EMBEDDED_KEY:Ljava/lang/String; = "com.android.wallpaper.livepicker.LiveWallpaperActivity$WallpaperDialog.EMBEDDED_KEY"


# instance fields
.field private mAdapter:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

.field private mEmbedded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private generateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 135
    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, layout:Landroid/view/View;
    new-instance v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mAdapter:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    .line 138
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 140
    .local v0, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<Landroid/widget/BaseAdapter;>;"
    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mAdapter:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 143
    return-object v1
.end method

.method public static newInstance()Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;

    invoke-direct {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;-><init>()V

    .line 76
    .local v0, dialog:Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 77
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    if-eqz p1, :cond_0

    const-string v0, "com.android.wallpaper.livepicker.LiveWallpaperActivity$WallpaperDialog.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "com.android.wallpaper.livepicker.LiveWallpaperActivity$WallpaperDialog.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mEmbedded:Z

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isInLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mEmbedded:Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 111
    .local v2, contentInset:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->generateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08000a

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    const v3, 0x7f080001

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    .line 116
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mEmbedded:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->generateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mAdapter:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    .line 149
    .local v2, wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    iget-object v1, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->intent:Landroid/content/Intent;

    .line 150
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    .line 151
    .local v0, info:Landroid/app/WallpaperInfo;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v3, v4, v1, v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->showPreview(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/WallpaperInfo;)V

    .line 152
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 92
    const-string v0, "com.android.wallpaper.livepicker.LiveWallpaperActivity$WallpaperDialog.EMBEDDED_KEY"

    iget-boolean v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mEmbedded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    return-void
.end method
