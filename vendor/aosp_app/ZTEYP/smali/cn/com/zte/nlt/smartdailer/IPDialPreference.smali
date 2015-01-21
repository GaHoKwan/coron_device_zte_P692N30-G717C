.class public Lcn/com/zte/nlt/smartdailer/IPDialPreference;
.super Landroid/preference/Preference;
.source "IPDialPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private Selectname:Ljava/lang/String;

.field private mEditable:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectedKey:Ljava/lang/String;

    .line 66
    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mProtectFromCheckedChange:Z

    .line 68
    iput-boolean v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectable:Z

    .line 69
    iput-boolean v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mEditable:Z

    .line 62
    invoke-direct {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mProtectFromCheckedChange:Z

    .line 68
    iput-boolean v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectable:Z

    .line 69
    iput-boolean v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mEditable:Z

    .line 54
    invoke-direct {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mProtectFromCheckedChange:Z

    .line 68
    iput-boolean v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectable:Z

    .line 69
    iput-boolean v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mEditable:Z

    .line 45
    invoke-direct {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/nlt/smartdailer/IPDialPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->Selectname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/com/zte/nlt/NltConst;->URI_GET_VALUE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, cr:Landroid/database/Cursor;
    const-string v9, ""

    .line 211
    .local v9, ret:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 212
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 213
    .local v8, index:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 220
    if-eqz v6, :cond_0

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    .end local v8           #index:I
    :cond_0
    :goto_0
    return-object v9

    .line 215
    :catch_0
    move-exception v7

    .line 216
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    const-string v9, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    if-eqz v6, :cond_0

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 220
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->setLayoutResource(I)V

    .line 109
    return-void
.end method

.method private putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/com/zte/nlt/NltConst;->URI_PUT_VALUE:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private showIpNumberInputDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "value"

    .prologue
    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 179
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 180
    .local v4, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 181
    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 182
    .local v3, ipNumber:Landroid/widget/EditText;
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 184
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 185
    const v5, 0x7f08002c

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 186
    const v5, 0x7f080019

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/com/zte/nlt/smartdailer/IPDialPreference$1;

    invoke-direct {v6, p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference$1;-><init>(Lcn/com/zte/nlt/smartdailer/IPDialPreference;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    const v5, 0x7f080057

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/com/zte/nlt/smartdailer/IPDialPreference$2;

    invoke-direct {v6, p0, v3}, Lcn/com/zte/nlt/smartdailer/IPDialPreference$2;-><init>(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 201
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 203
    .local v2, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 204
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 205
    return-void
.end method


# virtual methods
.method public SetEditable(Z)V
    .locals 0
    .parameter "preferenceEditable"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mEditable:Z

    .line 163
    return-void
.end method

.method public getSelectable()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 74
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 76
    .local v3, view:Landroid/view/View;
    const v5, 0x1010001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 77
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 78
    check-cast v1, Landroid/widget/RadioButton;

    .line 79
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectable:Z

    if-eqz v5, :cond_4

    .line 80
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 84
    sput-object v1, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 85
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectedKey:Ljava/lang/String;

    .line 88
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mProtectFromCheckedChange:Z

    .line 89
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    iput-boolean v7, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mProtectFromCheckedChange:Z

    .line 96
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v5, 0x101

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, textLayout:Landroid/view/View;
    iget-boolean v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mEditable:Z

    if-nez v5, :cond_2

    .line 98
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    :cond_2
    if-eqz v2, :cond_3

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mEditable:Z

    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_3
    return-object v3

    .line 92
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 125
    :cond_0
    if-eqz p2, :cond_2

    .line 126
    sget-object v0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 129
    :cond_1
    sput-object p1, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 130
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectedKey:Ljava/lang/String;

    .line 131
    sget-object v0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_2
    sput-object v2, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 134
    sput-object v2, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 139
    const-string v2, "onClick is run "

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 140
    if-eqz p1, :cond_0

    const/high16 v2, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 141
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 143
    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->Selectname:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, ipValue:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->showIpNumberInputDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #ipValue:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectedKey:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setSelectName(Ljava/lang/String;)V
    .locals 0
    .parameter "preferenceName"

    .prologue
    .line 158
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->Selectname:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->mSelectable:Z

    .line 151
    return-void
.end method
