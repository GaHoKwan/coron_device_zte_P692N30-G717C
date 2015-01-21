.class public Lcn/com/zte/nlt/smartdailer/IPDialSettings;
.super Landroid/preference/PreferenceActivity;
.source "IPDialSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final IP_ENABLED_ARRAY:[Ljava/lang/String; = null

.field private static final IP_LOCALNUM_ARRAY:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY1:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY2:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY3:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY4:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY5:[Ljava/lang/String; = null

.field private static final IP_SELECT_ARRAY:[Ljava/lang/String; = null

.field private static final IP_SELECT_KEY:Ljava/lang/String; = "ip_dial_number"

.field private static final IP_SELECT_KEY_ARRAY:[Ljava/lang/String; = null

.field private static final LOCAL_NUMBER:[Ljava/lang/String; = null

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1

.field private static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field private static final mPrefIpDialEnabled:Ljava/lang/String; = "ip_dial_enabled"

.field private static final mPrefIpNumber1:Ljava/lang/String; = "ip_dial_number1"

.field private static final mPrefIpNumber2:Ljava/lang/String; = "ip_dial_number2"

.field private static final mPrefIpNumber3:Ljava/lang/String; = "ip_dial_number3"

.field private static final mPrefIpNumber4:Ljava/lang/String; = "ip_dial_number4"

.field private static final mPrefIpNumber5:Ljava/lang/String; = "ip_dial_number5"

.field private static final mPrefLocation:Ljava/lang/String; = "location_number"


# instance fields
.field private ipdial:Landroid/app/AlertDialog;

.field private mIpDialEnabled:Landroid/preference/CheckBoxPreference;

.field private mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

.field private mLocationNumber:Landroid/preference/EditTextPreference;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_enabled"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_enabled"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_ENABLED_ARRAY:[Ljava/lang/String;

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_localnum"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_localnum"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_LOCALNUM_ARRAY:[Ljava/lang/String;

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Cardone_select"

    aput-object v1, v0, v2

    const-string v1, "Cardtwo_select"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_SELECT_ARRAY:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number1"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number1"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY1:[Ljava/lang/String;

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number2"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number2"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY2:[Ljava/lang/String;

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number3"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number3"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY3:[Ljava/lang/String;

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number4"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number4"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY4:[Ljava/lang/String;

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number5"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number5"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY5:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_SELECT_KEY_ARRAY:[Ljava/lang/String;

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "location_number1"

    aput-object v1, v0, v2

    const-string v1, "location_number2"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->LOCAL_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private SetIPDialPreference(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/String;)V
    .locals 1
    .parameter "pre"
    .parameter "number"

    .prologue
    .line 204
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setSelectable(Z)V

    .line 206
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setSelectable(Z)V

    .line 209
    invoke-virtual {p1, p2}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private fillUi()V
    .locals 15

    .prologue
    .line 110
    iget v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    invoke-direct {p0, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->preload(I)V

    .line 111
    invoke-direct {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValuesCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 112
    .local v12, valuesCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_2

    .line 113
    :cond_0
    if-eqz v12, :cond_1

    .line 114
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cursor = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 120
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_ENABLED_ARRAY:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v13, v13, v14

    invoke-direct {p0, v12, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v3, 0x1

    .line 121
    .local v3, ipDialEnabled:Z
    :goto_1
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_LOCALNUM_ARRAY:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v13, v13, v14

    invoke-direct {p0, v12, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, PhoneNumber:Ljava/lang/String;
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_SELECT_ARRAY:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v13, v13, v14

    invoke-direct {p0, v12, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, selectNumber:Ljava/lang/String;
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY1:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v13, v13, v14

    invoke-direct {p0, v12, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, ipDialNumber1:Ljava/lang/String;
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY2:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v13, v13, v14

    invoke-direct {p0, v12, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, ipDialNumber2:Ljava/lang/String;
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY3:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v13, v13, v14

    invoke-direct {p0, v12, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, ipDialNumber3:Ljava/lang/String;
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY4:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v13, v13, v14

    invoke-direct {p0, v12, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, ipDialNumber4:Ljava/lang/String;
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY5:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v13, v13, v14

    invoke-direct {p0, v12, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, ipDialNumber5:Ljava/lang/String;
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->LOCAL_NUMBER:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v13, v13, v14

    invoke-direct {p0, v12, v13}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, locationNumber:Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 133
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mSubscription:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ipDialEnabled:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "PhoneNumber"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 135
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "selectnumber="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 136
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "locationNumber="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 138
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 140
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    const v14, 0x7f080046

    invoke-virtual {p0, v14}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    :goto_2
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {p0, v13, v4}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->SetIPDialPreference(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/String;)V

    .line 146
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-direct {p0, v13, v5}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->SetIPDialPreference(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/String;)V

    .line 147
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-direct {p0, v13, v6}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->SetIPDialPreference(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/String;)V

    .line 148
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    invoke-direct {p0, v13, v7}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->SetIPDialPreference(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/String;)V

    .line 149
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const/4 v14, 0x4

    aget-object v13, v13, v14

    invoke-direct {p0, v13, v8}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->SetIPDialPreference(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/String;)V

    .line 151
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 152
    const-string v13, " selectnumber is empty set one"

    invoke-static {v13}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 153
    sget-object v13, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY1:[Ljava/lang/String;

    iget v14, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v11, v13, v14

    .line 155
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ip_dial_number"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, enableKey:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "enable="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 158
    .local v10, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    .line 159
    .local v0, EnablePre:Lcn/com/zte/nlt/smartdailer/IPDialPreference;
    invoke-virtual {v0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setChecked()V

    .line 161
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 162
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 120
    .end local v0           #EnablePre:Lcn/com/zte/nlt/smartdailer/IPDialPreference;
    .end local v1           #PhoneNumber:Ljava/lang/String;
    .end local v2           #enableKey:Ljava/lang/String;
    .end local v3           #ipDialEnabled:Z
    .end local v4           #ipDialNumber1:Ljava/lang/String;
    .end local v5           #ipDialNumber2:Ljava/lang/String;
    .end local v6           #ipDialNumber3:Ljava/lang/String;
    .end local v7           #ipDialNumber4:Ljava/lang/String;
    .end local v8           #ipDialNumber5:Ljava/lang/String;
    .end local v9           #locationNumber:Ljava/lang/String;
    .end local v10           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v11           #selectNumber:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 142
    .restart local v1       #PhoneNumber:Ljava/lang/String;
    .restart local v3       #ipDialEnabled:Z
    .restart local v4       #ipDialNumber1:Ljava/lang/String;
    .restart local v5       #ipDialNumber2:Ljava/lang/String;
    .restart local v6       #ipDialNumber3:Ljava/lang/String;
    .restart local v7       #ipDialNumber4:Ljava/lang/String;
    .restart local v8       #ipDialNumber5:Ljava/lang/String;
    .restart local v9       #locationNumber:Ljava/lang/String;
    .restart local v11       #selectNumber:Ljava/lang/String;
    :cond_5
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v13, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v13, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 164
    .restart local v0       #EnablePre:Lcn/com/zte/nlt/smartdailer/IPDialPreference;
    .restart local v2       #enableKey:Ljava/lang/String;
    .restart local v10       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_6
    iget-object v13, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private getValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cr"
    .parameter "key"

    .prologue
    .line 275
    const-string v2, ""

    .line 277
    .local v2, ret:Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 278
    .local v1, index:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 284
    .end local v1           #index:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hejie.key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 285
    return-object v2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    const-string v2, ""

    goto :goto_0
.end method

.method private getValuesCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/com/zte/nlt/NltConst;->URI_GET_VALUE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getlocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 251
    const-string v6, ""

    .line 252
    .local v6, areaCode:Ljava/lang/String;
    sget-object v0, Lcn/com/zte/nlt/NltConst;->URI_LOCATION:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, numlocatorUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 255
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    :cond_0
    if-eqz v9, :cond_1

    .line 257
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v6

    .line 267
    .end local v6           #areaCode:Ljava/lang/String;
    .local v7, areaCode:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 261
    .end local v7           #areaCode:Ljava/lang/String;
    .restart local v6       #areaCode:Ljava/lang/String;
    :cond_2
    const-string v0, "areacode"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 262
    .local v8, areaCodeColumn:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areaCode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 264
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v7, v6

    .line 267
    .end local v6           #areaCode:Ljava/lang/String;
    .restart local v7       #areaCode:Ljava/lang/String;
    goto :goto_0
.end method

.method private preload(I)V
    .locals 6
    .parameter "sub"

    .prologue
    .line 176
    new-instance v0, Lcn/com/zte/nlt/utils/ConfigManager;

    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcn/com/zte/nlt/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, configMgr:Lcn/com/zte/nlt/utils/ConfigManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FirstLoadIpSettting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, key:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcn/com/zte/nlt/utils/ConfigManager;->get(Ljava/lang/String;Z)Z

    move-result v1

    .line 179
    .local v1, firstLoad:Z
    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcn/com/zte/nlt/utils/ConfigManager;->set(Ljava/lang/String;Z)Z

    .line 183
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/config/PreConfig;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/config/PreConfig;

    move-result-object v3

    .line 184
    .local v3, preConfig:Lcn/com/zte/yp/config/PreConfig;
    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->init()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 186
    sget-object v4, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY1:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber1()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_2
    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    sget-object v4, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY2:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber2()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3
    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber3()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 192
    sget-object v4, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY3:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber3()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_4
    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber4()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 195
    sget-object v4, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY4:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber4()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_5
    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber5()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    sget-object v4, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY5:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3}, Lcn/com/zte/yp/config/PreConfig;->getDefaultIpNumber5()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 289
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/com/zte/nlt/NltConst;->URI_PUT_VALUE:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 292
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 60
    iget v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    if-lt v1, v5, :cond_0

    .line 61
    iput v4, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 66
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "ip_dial_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    .line 67
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string v1, "location_number"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    .line 70
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    const/4 v1, 0x5

    new-array v1, v1, [Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    iput-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    .line 72
    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const-string v1, "ip_dial_number1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aput-object v1, v2, v4

    .line 73
    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const-string v1, "ip_dial_number2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aput-object v1, v2, v6

    .line 74
    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const-string v1, "ip_dial_number3"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aput-object v1, v2, v5

    .line 75
    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const-string v1, "ip_dial_number4"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aput-object v1, v2, v7

    .line 76
    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const-string v1, "ip_dial_number5"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aput-object v1, v2, v8

    .line 78
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v4

    sget-object v2, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY1:[Ljava/lang/String;

    iget v3, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setSelectName(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v4

    invoke-virtual {v1, p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v6

    sget-object v2, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY2:[Ljava/lang/String;

    iget v3, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setSelectName(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v6

    invoke-virtual {v1, p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v5

    sget-object v2, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY3:[Ljava/lang/String;

    iget v3, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setSelectName(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v5

    invoke-virtual {v1, p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v7

    sget-object v2, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY4:[Ljava/lang/String;

    iget v3, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setSelectName(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v7

    invoke-virtual {v1, p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v8

    sget-object v2, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_NUMBER_ARRAY5:[Ljava/lang/String;

    iget v3, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setSelectName(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v1, v1, v8

    invoke-virtual {v1, p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 103
    const-string v0, "IPDialSettings"

    const-string v1, "**********onPause***********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 107
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preference.getKey():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "objValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 215
    const-string v7, "refresh"

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 216
    invoke-direct {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->fillUi()V

    .line 247
    :goto_0
    return v6

    .line 219
    :cond_0
    iget-object v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_3

    .line 220
    iget-object v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 221
    .local v3, isPreferenceChecked:Z
    sget-object v7, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_ENABLED_ARRAY:[Ljava/lang/String;

    iget v8, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v7, v7, v8

    if-nez v3, :cond_1

    move v5, v6

    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v7, v5}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSubscription:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " isPreferenceChecked:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 246
    .end local v3           #isPreferenceChecked:Z
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->fillUi()V

    goto :goto_0

    .line 223
    :cond_3
    iget-object v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_5

    .line 224
    iget-object v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, PhoneNumber:Ljava/lang/String;
    const-string v4, ""

    .line 226
    .local v4, myLocal:Ljava/lang/String;
    sget-object v5, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_LOCALNUM_ARRAY:[Ljava/lang/String;

    iget v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v5, v5, v7

    invoke-direct {p0, v5, v0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSubscription:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LocationNumber:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 230
    iget-object v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    const v7, 0x7f080046

    invoke-virtual {p0, v7}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "myLocal:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 236
    sget-object v5, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->LOCAL_NUMBER:[Ljava/lang/String;

    iget v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v5, v5, v7

    invoke-direct {p0, v5, v4}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_4
    invoke-direct {p0, v0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->getlocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    iget-object v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mLocationNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 237
    .end local v0           #PhoneNumber:Ljava/lang/String;
    .end local v4           #myLocal:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v5, v7, v5

    if-eq p1, v5, :cond_6

    iget-object v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    aget-object v5, v5, v6

    if-eq p1, v5, :cond_6

    iget-object v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    if-eq p1, v5, :cond_6

    iget-object v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const/4 v7, 0x3

    aget-object v5, v5, v7

    if-eq p1, v5, :cond_6

    iget-object v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mIpNumbers:[Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const/4 v7, 0x4

    aget-object v5, v5, v7

    if-ne p1, v5, :cond_2

    .line 239
    :cond_6
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v1, p2

    .line 240
    check-cast v1, Ljava/lang/String;

    .line 241
    .local v1, Selected:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_SELECT_KEY_ARRAY:[Ljava/lang/String;

    iget v8, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, enablebutton:Ljava/lang/String;
    sget-object v5, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->IP_SELECT_ARRAY:[Ljava/lang/String;

    iget v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->mSubscription:I

    aget-object v5, v5, v7

    invoke-direct {p0, v5, v2}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 97
    invoke-direct {p0}, Lcn/com/zte/nlt/smartdailer/IPDialSettings;->fillUi()V

    .line 98
    return-void
.end method
