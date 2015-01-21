.class public Lcom/zte/filexplorer/TextEditor;
.super Landroid/app/Activity;
.source "TextEditor.java"


# static fields
.field public static final IDM_OPEN:I = 0x65

.field public static final IDM_SAVE:I = 0x66


# instance fields
.field private FILENAME:Ljava/lang/String;

.field private myEdit:Landroid/widget/EditText;

.field private openedTxtFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private saveFile(Ljava/io/File;)V
    .locals 6
    .parameter "editedFileToSave"

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 89
    .local v0, outStream:Ljava/io/OutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 90
    .local v1, sw:Ljava/io/OutputStreamWriter;
    iget-object v3, p0, Lcom/zte/filexplorer/TextEditor;->myEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0           #outStream:Ljava/io/OutputStream;
    .end local v1           #sw:Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, t:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/zte/filexplorer/TextEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/zte/filexplorer/TextEditor;->setContentView(I)V

    .line 34
    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/zte/filexplorer/TextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/filexplorer/TextEditor;->myEdit:Landroid/widget/EditText;

    .line 35
    invoke-virtual {p0}, Lcom/zte/filexplorer/TextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/filexplorer/TextEditor;->FILENAME:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/filexplorer/TextEditor;->FILENAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/TextEditor;->openedTxtFile:Ljava/io/File;

    .line 37
    iget-object v0, p0, Lcom/zte/filexplorer/TextEditor;->openedTxtFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/zte/filexplorer/TextEditor;->openFile(Ljava/io/File;)V

    .line 38
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 44
    const/16 v0, 0x66

    const-string v1, "Save"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/zte/filexplorer/TextEditor;->openedTxtFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/zte/filexplorer/TextEditor;->saveFile(Ljava/io/File;)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method public openFile(Ljava/io/File;)V
    .locals 9
    .parameter "fileName"

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    .local v1, inStream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 69
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v3, sr:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #inStream:Ljava/io/InputStream;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #sr:Ljava/io/InputStreamReader;
    .end local v4           #str:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 82
    .local v5, t:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/zte/filexplorer/TextEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 84
    .end local v5           #t:Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 78
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #inStream:Ljava/io/InputStream;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v3       #sr:Ljava/io/InputStreamReader;
    .restart local v4       #str:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 79
    iget-object v6, p0, Lcom/zte/filexplorer/TextEditor;->myEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
