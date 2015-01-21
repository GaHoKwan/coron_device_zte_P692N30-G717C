.class public Lcom/mediatek/contacts/plugin/calllog/CallLogAdapterOP09Extension;
.super Lcom/android/contacts/ext/CallLogAdapterExtension;
.source "CallLogAdapterOP09Extension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogAdapterOP09Extension"


# instance fields
.field private mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V
    .locals 0
    .parameter "pluginContext"
    .parameter "op09ContactsPlugin"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/contacts/ext/CallLogAdapterExtension;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogAdapterOP09Extension;->mPluginContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    .line 25
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 41
    const-string v0, "CallLogAdapterOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


# virtual methods
.method public bindViewPre(Landroid/view/View;Landroid/database/Cursor;ILcom/android/contacts/calllog/ContactInfo;)V
    .locals 5
    .parameter "view"
    .parameter "c"
    .parameter "count"
    .parameter "contactInfo"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    invoke-virtual {v0}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->getTimezoneRawOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-wide v0, p4, Lcom/android/contacts/calllog/ContactInfo;->date:J

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    iget-wide v3, p4, Lcom/android/contacts/calllog/ContactInfo;->date:J

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->getTimezoneOffset(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p4, Lcom/android/contacts/calllog/ContactInfo;->date:J

    goto :goto_0
.end method

.method public setListItemViewTag(Landroid/view/View;Lcom/android/contacts/calllog/ContactInfo;Landroid/database/Cursor;Landroid/content/Intent;)Z
    .locals 1
    .parameter "itemView"
    .parameter "contactInfo"
    .parameter "c"
    .parameter "callDetailIntent"

    .prologue
    .line 29
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;

    invoke-direct {v0, p2, p4}, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;-><init>(Lcom/android/contacts/calllog/ContactInfo;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method
