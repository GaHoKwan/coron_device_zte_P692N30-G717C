.class public Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;
.super Lcom/android/contacts/ext/CallListExtension;
.source "CallListOP09Extension.java"

# interfaces
.implements Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;


# static fields
.field private static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field private static final TAG:Ljava/lang/String; = "CallListOP09Extension"


# instance fields
.field private mCallLogQueryHandler:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

.field private mFragment:Landroid/app/ListFragment;

.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pluginContext"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/ext/CallListExtension;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;)Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mCallLogQueryHandler:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

    return-object v0
.end method

.method private getCallLogIds(Landroid/content/Intent;)[J
    .locals 5
    .parameter "callDetailIntent"

    .prologue
    .line 234
    const-string v1, "getCallLogIds()"

    invoke-static {v1}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->log(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 236
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 239
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    goto :goto_0
.end method

.method private getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "number"
    .parameter "formattedNumber"

    .prologue
    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    const-string p1, ""

    .line 300
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 286
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    invoke-virtual {v2}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 287
    .local v1, resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    invoke-virtual {v2}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, packageName:Ljava/lang/String;
    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    const-string v2, "unknown"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 291
    :cond_2
    const-string v2, "-2"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    const-string v2, "private_num"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 294
    :cond_3
    const-string v2, "-3"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    const-string v2, "payphone"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 297
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p1, p2

    .line 300
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 305
    const-string v0, "CallListOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method private showDeleteAllCallsWithContactDialog(Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;)V
    .locals 5
    .parameter "callLogInfo"

    .prologue
    .line 266
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    invoke-virtual {v3}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090104

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090105

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension$2;

    invoke-direct {v4, p0, p1}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension$2;-><init>(Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 278
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 279
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 280
    return-void
.end method

.method private showDeleteAllCallsWithNumberDialog(Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;)V
    .locals 5
    .parameter "callLogInfo"

    .prologue
    .line 248
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    invoke-virtual {v3}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090102

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090103

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension$1;

    invoke-direct {v4, p0, p1}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension$1;-><init>(Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 261
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 262
    return-void
.end method


# virtual methods
.method public getDeleteFilterFromCallDetailIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "callDetailIntent"

    .prologue
    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeleteFilterFromCallDetailIntent(), callDetailIntent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->log(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->getCallLogIds(Landroid/content/Intent;)[J

    move-result-object v1

    .line 212
    .local v1, ids:[J
    if-nez v1, :cond_0

    .line 213
    const-string v3, "ids got from intent is null, just return"

    invoke-static {v3}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->log(Ljava/lang/String;)V

    .line 214
    const/4 v3, 0x0

    .line 230
    :goto_0
    return-object v3

    .line 216
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v3, 0x0

    aget-wide v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 222
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeleteFilter() where ==  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->log(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onCallsDeleted()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 161
    .local v4, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v4, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v5

    .line 164
    :cond_1
    iget-object v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;

    .line 165
    .local v0, callLogInfo:Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;
    if-eqz v0, :cond_0

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    invoke-virtual {v5}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    .line 179
    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    invoke-virtual {v5}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v7, "clipboard"

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 185
    .local v2, clipboardManager:Landroid/content/ClipboardManager;
    const-string v3, "label"

    .line 186
    .local v3, label:Ljava/lang/String;
    iget-object v5, v0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v5, v5, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 187
    .local v1, clipData:Landroid/content/ClipData;
    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    move v5, v6

    .line 188
    goto :goto_0

    .line 191
    .end local v1           #clipData:Landroid/content/ClipData;
    .end local v2           #clipboardManager:Landroid/content/ClipboardManager;
    .end local v3           #label:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mCallLogQueryHandler:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

    iget-object v7, v0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mCallDetailIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->getDeleteFilterFromCallDetailIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;->deleteSpecifiedCalls(Ljava/lang/String;)V

    move v5, v6

    .line 193
    goto :goto_0

    .line 196
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->showDeleteAllCallsWithNumberDialog(Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;)V

    move v5, v6

    .line 197
    goto :goto_0

    .line 200
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->showDeleteAllCallsWithContactDialog(Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;)V

    move v5, v6

    .line 201
    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x7f0b0002
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/app/ListFragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 53
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

    invoke-virtual {p1}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mCallLogQueryHandler:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

    .line 54
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    .line 55
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 11
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    const-string v7, "onCreateContextMenu()"

    invoke-static {v7}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->log(Ljava/lang/String;)V

    .line 79
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget-object v7, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;

    .line 81
    .local v1, callLogInfo:Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;
    if-eqz v1, :cond_0

    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    if-nez v7, :cond_2

    .line 82
    :cond_0
    const-string v6, "onCreateContextMenu(), callLogInfo or callLogInfo.mContactInfo is null, just return"

    invoke-static {v6}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->log(Ljava/lang/String;)V

    move v6, v5

    .line 154
    :cond_1
    :goto_0
    return v6

    .line 86
    :cond_2
    iget-object v7, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 88
    .local v4, titleView:Landroid/view/View;
    const v7, 0x7f0b001f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    .local v2, mainTitle:Landroid/widget/TextView;
    const v7, 0x7f0b0020

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 90
    .local v3, subTitle:Landroid/widget/TextView;
    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 91
    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v8, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v8, v8, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 101
    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    const-string v8, "-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    const-string v8, "-2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    const-string v8, "-3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_3
    move v0, v6

    .line 105
    .local v0, bSpecialNumber:Z
    :goto_2
    const v7, 0x7f0b0002

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f0900f7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mCallDetailIntent:Landroid/content/Intent;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 109
    if-nez v0, :cond_4

    .line 110
    const v7, 0x7f0b0003

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f0900f8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v8, v8, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v8}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 114
    const v7, 0x7f0b0004

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f0900f9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v8, v8, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v8}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getSMSIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 119
    :cond_4
    const v7, 0x7f0b0005

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f0900fa

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 122
    if-nez v0, :cond_1

    .line 123
    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 124
    const v7, 0x7f0b000c

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f090101

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v8, v8, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v8}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getAddToContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 127
    const v7, 0x7f0b0006

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f0900fb

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 134
    :goto_3
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 135
    const v7, 0x7f0b0008

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f0900fd

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v8, v8, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v8}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 140
    :cond_5
    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 141
    const v7, 0x7f0b0009

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f0900fe

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    iget-object v10, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v10, v10, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 146
    :cond_6
    const v7, 0x7f0b000a

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f0900ff

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 149
    const v7, 0x7f0b000b

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f090100

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v7}, Lcom/mediatek/calloption/plugin/OP09CallOptionUtils;->getCopyToDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 95
    .end local v0           #bSpecialNumber:Z
    :cond_7
    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v7, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v8, v1, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v8, v8, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    move v0, v5

    .line 101
    goto/16 :goto_2

    .line 130
    .restart local v0       #bSpecialNumber:Z
    :cond_9
    const v7, 0x7f0b0007

    iget-object v8, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mPluginContext:Landroid/content/Context;

    const v9, 0x7f0900fc

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v7, v5, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    .line 66
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick(), view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->log(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;

    .line 71
    .local v0, callLogInfo:Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    invoke-virtual {v1}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mCallDetailIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 74
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    invoke-virtual {v1}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 59
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mFragment:Landroid/app/ListFragment;

    invoke-virtual {v1, v0}, Landroid/app/ListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 62
    :cond_0
    return-void
.end method
