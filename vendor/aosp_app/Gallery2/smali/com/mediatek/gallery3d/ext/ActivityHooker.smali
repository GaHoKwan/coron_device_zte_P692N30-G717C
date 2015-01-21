.class public Lcom/mediatek/gallery3d/ext/ActivityHooker;
.super Ljava/lang/Object;
.source "ActivityHooker.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IActivityHooker;


# static fields
.field private static final MENU_MAX_NUMBER:I = 0x64

.field private static sMenuId:I

.field private static sMenuLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mIntent:Landroid/content/Intent;

.field private mMenuId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->sMenuId:I

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->sMenuLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v1, Lcom/mediatek/gallery3d/ext/ActivityHooker;->sMenuLock:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget v0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->sMenuId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->sMenuId:I

    .line 22
    sget v0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->sMenuId:I

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->mMenuId:I

    .line 23
    monitor-exit v1

    .line 24
    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMenuActivityId(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 28
    iget v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->mMenuId:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getMenuOriginalId(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 33
    iget v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->mMenuId:I

    sub-int v0, p1, v0

    return v0
.end method

.method public init(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->mContext:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/mediatek/gallery3d/ext/ActivityHooker;->mIntent:Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 86
    return-void
.end method
