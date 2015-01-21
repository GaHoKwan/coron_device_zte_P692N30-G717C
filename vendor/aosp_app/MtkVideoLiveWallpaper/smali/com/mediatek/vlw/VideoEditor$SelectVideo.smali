.class Lcom/mediatek/vlw/VideoEditor$SelectVideo;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectVideo"
.end annotation


# instance fields
.field private mAdapter:Lcom/mediatek/vlw/AddAdapter;

.field final synthetic this$0:Lcom/mediatek/vlw/VideoEditor;


# direct methods
.method private constructor <init>(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/vlw/VideoEditor;Lcom/mediatek/vlw/VideoEditor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VideoEditor$SelectVideo;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 1199
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 1173
    new-instance v2, Lcom/mediatek/vlw/AddAdapter;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {v2, v3}, Lcom/mediatek/vlw/AddAdapter;-><init>(Lcom/mediatek/vlw/VideoEditor;)V

    iput-object v2, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->mAdapter:Lcom/mediatek/vlw/AddAdapter;

    .line 1175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1177
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1178
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->mAdapter:Lcom/mediatek/vlw/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1179
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1182
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1183
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1184
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1186
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->cleanup()V

    .line 1191
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 1205
    invoke-direct {p0}, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->cleanup()V

    .line 1207
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->mAdapter:Lcom/mediatek/vlw/AddAdapter;

    invoke-virtual {v3, p2}, Lcom/mediatek/vlw/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vlw/AddAdapter$ListItem;

    .line 1208
    .local v0, listItem:Lcom/mediatek/vlw/AddAdapter$ListItem;
    const/4 v1, 0x0

    .line 1209
    .local v1, pickIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1210
    .local v2, wrapperIntent:Landroid/content/Intent;
    iget v3, v0, Lcom/mediatek/vlw/AddAdapter$ListItem;->mActionTag:I

    packed-switch v3, :pswitch_data_0

    .line 1226
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown item actionTag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/mediatek/vlw/AddAdapter$ListItem;->mActionTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_0
    return-void

    .line 1212
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #pickIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    .restart local v1       #pickIntent:Landroid/content/Intent;
    const-string v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 1215
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1219
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #pickIntent:Landroid/content/Intent;
    const-string v3, "com.mediatek.action.PICK_VIDEO_FOLDER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1220
    .restart local v1       #pickIntent:Landroid/content/Intent;
    const-string v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 1222
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$SelectVideo;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1195
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1233
    return-void
.end method
