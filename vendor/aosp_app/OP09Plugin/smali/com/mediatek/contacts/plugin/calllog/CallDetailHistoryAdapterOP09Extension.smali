.class public Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;
.super Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
.source "CallDetailHistoryAdapterOP09Extension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallDetailHistoryAdapterOP09Extension"

.field private static final VIEW_TYPE_ALL_CALL_HEADER:I = 0x2


# instance fields
.field private mHostContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

.field private mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V
    .locals 0
    .parameter "pluginContext"
    .parameter "op09ContactsPlugin"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPluginContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    .line 35
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 134
    const-string v0, "CallDetailHistoryAdapterOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v3, p1, -0x1

    aget-object v1, v2, v3

    check-cast v1, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;

    .line 55
    .local v1, phoneCallDetails:Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;
    const/4 v2, 0x3

    iget v3, v1, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;->displayType:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 56
    const/4 v2, 0x2

    .line 63
    .end local v1           #phoneCallDetails:Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;
    :goto_0
    return v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "djb"

    const-string v3, "ArrayIndexOutOfBoundsException excetion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getViewPost(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 94
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object p2

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    invoke-virtual {v1}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->getTimezoneRawOffset()I

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 102
    .local v12, resource:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v2, p1, -0x1

    aget-object v11, v1, v2

    .line 104
    .local v11, phoneCallDetails:Lcom/android/contacts/PhoneCallDetails;
    const-string v1, "date"

    const-string v2, "id"

    invoke-virtual {v12, v1, v2, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 106
    .local v9, dateView:Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 107
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mHostContext:Landroid/content/Context;

    iget-wide v2, v11, Lcom/android/contacts/PhoneCallDetails;->date:J

    iget-object v4, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    iget-wide v5, v11, Lcom/android/contacts/PhoneCallDetails;->date:J

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->getTimezoneOffset(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-wide v4, v11, Lcom/android/contacts/PhoneCallDetails;->date:J

    iget-object v6, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    iget-wide v13, v11, Lcom/android/contacts/PhoneCallDetails;->date:J

    invoke-virtual {v6, v13, v14}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->getTimezoneOffset(J)I

    move-result v6

    int-to-long v13, v6

    add-long/2addr v4, v13

    const/16 v6, 0x17

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, dateValue:Ljava/lang/CharSequence;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .end local v8           #dateValue:Ljava/lang/CharSequence;
    .end local v9           #dateView:Landroid/widget/TextView;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #phoneCallDetails:Lcom/android/contacts/PhoneCallDetails;
    .end local v12           #resource:Landroid/content/res/Resources;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v2, p1, -0x1

    aget-object v11, v1, v2

    check-cast v11, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;

    .line 117
    .local v11, phoneCallDetails:Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;
    const/4 v1, 0x2

    iget v2, v11, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;->displayType:I

    if-ne v1, v2, :cond_0

    .line 118
    iget-object v1, v11, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 120
    .restart local v12       #resource:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 121
    .restart local v10       #packageName:Ljava/lang/String;
    const-string v1, "call_type_text"

    const-string v2, "id"

    invoke-virtual {v12, v1, v2, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 123
    .local v7, callTypeTextView:Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;->numberType:I

    iget-object v3, v11, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v12, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public getViewPre(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 67
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v2

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    instance-of v3, v3, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v4, p1, -0x1

    aget-object v1, v3, v4

    check-cast v1, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;

    .line 75
    .local v1, phoneCallDetails:Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;
    const/4 v3, 0x3

    iget v4, v1, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;->displayType:I

    if-ne v3, v4, :cond_0

    .line 76
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, result:Landroid/view/View;
    :goto_1
    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, allCallsText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 81
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    .line 82
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090114

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0           #allCallsText:Landroid/widget/TextView;
    .end local v2           #result:Landroid/view/View;
    :cond_2
    move-object v2, p2

    .line 76
    goto :goto_1

    .line 84
    .restart local v0       #allCallsText:Landroid/widget/TextView;
    .restart local v2       #result:Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090115

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getViewTypeCount(I)I
    .locals 1
    .parameter "currentViewTypeCount"

    .prologue
    .line 45
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;[Lcom/android/contacts/PhoneCallDetails;)V
    .locals 2
    .parameter "context"
    .parameter "phoneCallDetails"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mHostContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    .line 41
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mPluginContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailHistoryAdapterOP09Extension;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method
