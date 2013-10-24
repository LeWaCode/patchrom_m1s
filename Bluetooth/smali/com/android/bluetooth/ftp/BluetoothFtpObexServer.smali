.class public Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;
.super Ljavax/btobex/ServerRequestHandler;
.source "BluetoothFtpObexServer.java"


# static fields
.field private static final FTP_TARGET:[B

.field private static final LEGAL_PATH:[Ljava/lang/String;

.field public static sIsAborted:Z


# instance fields
.field filenames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/os/Handler;

.field private mConnectionId:J

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    sput-boolean v2, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z

    .line 112
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->FTP_TARGET:[B

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/sdcard"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->LEGAL_PATH:[Ljava/lang/String;

    return-void

    .line 112
    :array_0
    .array-data 0x1
        0xf9t
        0xect
        0x7bt
        0xc4t
        0x95t
        0x3ct
        0x11t
        0xd2t
        0x98t
        0x4et
        0x52t
        0x54t
        0x0t
        0xdct
        0x9et
        0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter "callback"
    .parameter "context"

    .prologue
    .line 122
    invoke-direct {p0}, Ljavax/btobex/ServerRequestHandler;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mConnectionId:J

    .line 124
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    .line 125
    iput-object p2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mContext:Landroid/content/Context;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->filenames:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->types:Ljava/util/List;

    .line 130
    return-void
.end method

.method public static closeStream(Ljava/io/InputStream;Ljavax/btobex/Operation;)Z
    .locals 5
    .parameter "in"
    .parameter "op"

    .prologue
    .line 1224
    const/4 v1, 0x1

    .line 1228
    .local v1, returnvalue:Z
    if-eqz p0, :cond_0

    .line 1229
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1237
    :try_start_1
    invoke-interface {p1}, Ljavax/btobex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1246
    :cond_1
    :goto_1
    return v1

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothFtpObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 v1, 0x0

    goto :goto_0

    .line 1239
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1240
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "BluetoothFtpObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z
    .locals 5
    .parameter "out"
    .parameter "op"

    .prologue
    .line 1200
    const/4 v1, 0x1

    .line 1203
    .local v1, returnvalue:Z
    if-eqz p0, :cond_0

    .line 1204
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1212
    :try_start_1
    invoke-interface {p1}, Ljavax/btobex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1220
    :cond_1
    :goto_1
    return v1

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothFtpObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/4 v1, 0x0

    goto :goto_0

    .line 1214
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1215
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "BluetoothFtpObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final extractLength(Ljavax/btobex/HeaderSet;)J
    .locals 4
    .parameter "request"

    .prologue
    .line 1056
    const-wide/16 v0, 0x0

    .line 1057
    .local v0, len:J
    if-eqz p1, :cond_0

    .line 1059
    const/16 v3, 0xc3

    :try_start_0
    invoke-virtual {p1, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    .line 1063
    .local v2, length:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1064
    check-cast v2, Ljava/lang/Long;

    .end local v2           #length:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1067
    :cond_0
    :goto_0
    return-wide v0

    .line 1065
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final pushBytes(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 13
    .parameter "op"
    .parameter "folderlistString"

    .prologue
    .line 1073
    if-nez p2, :cond_1

    .line 1075
    const/16 v6, 0xa0

    .line 1128
    :cond_0
    :goto_0
    return v6

    .line 1078
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1079
    .local v1, folderListing:[B
    array-length v2, v1

    .line 1082
    .local v2, folderlistStringLen:I
    const/4 v4, 0x0

    .line 1083
    .local v4, outputStream:Ljava/io/OutputStream;
    const/16 v6, 0xa0

    .line 1085
    .local v6, pushResult:I
    :try_start_0
    invoke-interface {p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1091
    const/4 v5, 0x0

    .line 1092
    .local v5, position:I
    const-wide/16 v8, 0x0

    .line 1093
    .local v8, timestamp:J
    invoke-interface {p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v3

    .line 1095
    .local v3, outputBufferSize:I
    :goto_1
    if-eq v5, v2, :cond_2

    move-object v10, p1

    .line 1096
    check-cast v10, Ljavax/btobex/ServerOperation;

    invoke-virtual {v10}, Ljavax/btobex/ServerOperation;->isAborted()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, p1

    .line 1097
    check-cast v10, Ljavax/btobex/ServerOperation;

    const/4 v11, 0x1

    iput-boolean v11, v10, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 1098
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z

    .line 1124
    :cond_2
    :goto_2
    invoke-static {v4, p1}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1125
    const/16 v6, 0xd0

    goto :goto_0

    .line 1086
    .end local v3           #outputBufferSize:I
    .end local v5           #position:I
    .end local v8           #timestamp:J
    :catch_0
    move-exception v0

    .line 1087
    .local v0, e:Ljava/io/IOException;
    const-string v10, "BluetoothFtpObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "open outputstrem failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const/16 v6, 0xd0

    goto :goto_0

    .line 1102
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #outputBufferSize:I
    .restart local v5       #position:I
    .restart local v8       #timestamp:J
    :cond_3
    move v7, v3

    .line 1103
    .local v7, readLength:I
    sub-int v10, v2, v5

    if-ge v10, v3, :cond_4

    .line 1104
    sub-int v7, v2, v5

    .line 1108
    :cond_4
    :try_start_1
    invoke-virtual {v4, v1, v5, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1119
    add-int/2addr v5, v7

    .line 1120
    goto :goto_1

    .line 1109
    :catch_1
    move-exception v0

    .line 1110
    .restart local v0       #e:Ljava/io/IOException;
    const-string v10, "BluetoothFtpObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "write outputstrem failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/16 v6, 0xd0

    .line 1112
    goto :goto_2
.end method

.method private final scanDirectory(Ljava/io/File;)V
    .locals 11
    .parameter "dir"

    .prologue
    .line 991
    const-string v8, "BluetoothFtpObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scanDirectory Dest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 993
    const/4 v5, 0x0

    .line 995
    .local v5, mimeType:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, extension:Ljava/lang/String;
    const/4 v7, 0x0

    .line 996
    .local v7, type:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 997
    .local v6, name:Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 998
    .local v0, dotIndex:I
    if-gez v0, :cond_1

    .line 1052
    .end local v0           #dotIndex:I
    .end local v1           #extension:Ljava/lang/String;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1001
    .restart local v0       #dotIndex:I
    .restart local v1       #extension:Ljava/lang/String;
    .restart local v5       #mimeType:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #type:Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1002
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 1003
    .local v4, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1005
    if-eqz v7, :cond_2

    .line 1006
    move-object v5, v7

    .line 1008
    :cond_2
    if-eqz v5, :cond_0

    .line 1009
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1011
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->filenames:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/mnt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->types:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1019
    .end local v0           #dotIndex:I
    .end local v1           #extension:Ljava/lang/String;
    .end local v4           #map:Landroid/webkit/MimeTypeMap;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1020
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 1021
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 1023
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1024
    aget-object v8, v2, v3

    invoke-direct {p0, v8}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->scanDirectory(Ljava/io/File;)V

    .line 1021
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1025
    :cond_5
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1026
    const/4 v5, 0x0

    .line 1028
    .restart local v5       #mimeType:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #extension:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1029
    .restart local v7       #type:Ljava/lang/String;
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1030
    .restart local v6       #name:Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1031
    .restart local v0       #dotIndex:I
    if-ltz v0, :cond_4

    .line 1034
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 1036
    .restart local v4       #map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1039
    if-eqz v7, :cond_6

    .line 1040
    move-object v5, v7

    .line 1042
    :cond_6
    if-eqz v5, :cond_4

    .line 1043
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1045
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->filenames:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/mnt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->types:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private final sendFileContents(Ljavax/btobex/Operation;Ljava/io/File;)I
    .locals 30
    .parameter "op"
    .parameter "fileinfo"

    .prologue
    .line 869
    const/16 v16, 0x0

    .line 870
    .local v16, position:I
    const/16 v17, 0x0

    .line 871
    .local v17, readLength:I
    const/4 v13, 0x0

    .line 872
    .local v13, isitokToProceed:Z
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v14

    .line 873
    .local v14, outputBufferSize:I
    const-wide/16 v24, 0x0

    .line 874
    .local v24, timestamp:J
    const/16 v21, -0x1

    .line 875
    .local v21, responseCode:I
    const/4 v7, 0x0

    .line 876
    .local v7, fileInputStream:Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 880
    .local v15, outputStream:Ljava/io/OutputStream;
    const-wide/16 v18, 0x0

    .line 881
    .local v18, readbytesleft:J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 883
    .local v9, filelength:J
    new-array v4, v14, [B

    .line 885
    .local v4, buffer:[B
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 886
    const/16 v26, 0xc4

    .line 975
    .end local p1
    :cond_0
    :goto_0
    return v26

    .line 890
    .restart local p1
    :cond_1
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .local v8, fileInputStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v15

    .line 896
    if-eqz v8, :cond_3

    if-nez v15, :cond_3

    .line 898
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 902
    :goto_1
    const/16 v26, 0xd0

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_0

    .line 892
    :catch_0
    move-exception v5

    .line 893
    .local v5, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SendFilecontents open stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 894
    const/16 v26, 0xd0

    .line 896
    if-eqz v7, :cond_0

    if-nez v15, :cond_0

    .line 898
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 902
    .end local v5           #e:Ljava/io/IOException;
    :goto_3
    const/16 v26, 0xd0

    goto :goto_0

    .line 896
    :cond_2
    throw v26

    .line 905
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    :cond_3
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v26, 0x4000

    move/from16 v0, v26

    invoke-direct {v3, v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 906
    .local v3, bis:Ljava/io/BufferedInputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 911
    .local v22, starttimestamp:J
    :try_start_5
    new-instance v20, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v20 .. v20}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 912
    .local v20, reply:Ljavax/btobex/HeaderSet;
    if-eqz v20, :cond_4

    .line 913
    const/16 v26, 0xc3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 914
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljavax/btobex/Operation;->sendHeaders(Ljavax/btobex/HeaderSet;)V

    .line 916
    :cond_4
    :goto_4
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v26, v9

    if-eqz v26, :cond_5

    .line 917
    sget-boolean v26, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z

    if-eqz v26, :cond_7

    .line 918
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 919
    const/16 v26, 0x0

    sput-boolean v26, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 955
    :cond_5
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 956
    .local v11, finishtimestamp:J
    if-eqz v3, :cond_6

    .line 958
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 966
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 967
    const/16 v26, 0xd0

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 922
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .end local v11           #finishtimestamp:J
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 924
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v18, v9, v26

    .line 925
    int-to-long v0, v14

    move-wide/from16 v26, v0

    cmp-long v26, v18, v26

    if-gez v26, :cond_8

    .line 926
    move-wide/from16 v0, v18

    long-to-int v14, v0

    .line 928
    :cond_8
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v4, v0, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v17

    .line 933
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ObexHelper;->getLocalSrmStatus()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 934
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ServerOperation;->isAborted()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 935
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 936
    const/16 v26, 0x0

    sput-boolean v26, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 949
    .end local v20           #reply:Ljavax/btobex/HeaderSet;
    :catch_1
    move-exception v5

    .line 950
    .restart local v5       #e:Ljava/io/IOException;
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Write aborted "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    check-cast p1, Ljavax/btobex/ServerOperation;

    .end local p1
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput-boolean v0, v1, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 953
    const/16 v26, 0xc0

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 941
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v20       #reply:Ljavax/btobex/HeaderSet;
    .restart local p1
    :cond_9
    const/16 v26, 0x0

    :try_start_8
    move/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v15, v4, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 942
    add-int v16, v16, v17

    goto/16 :goto_4

    .line 959
    .restart local v11       #finishtimestamp:J
    :catch_2
    move-exception v5

    .line 960
    .restart local v5       #e:Ljava/io/IOException;
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "input stream close"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/16 v26, 0xd0

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 970
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    :cond_a
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v26, v9

    if-eqz v26, :cond_b

    check-cast p1, Ljavax/btobex/ServerOperation;

    .end local p1
    move-object/from16 v0, p1

    iget-boolean v0, v0, Ljavax/btobex/ServerOperation;->isAborted:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 971
    :cond_b
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Get Request TP analysis : Transmitted "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes in"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v11, v22

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/16 v26, 0xa0

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 975
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    :cond_c
    const/16 v26, 0x90

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 896
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #finishtimestamp:J
    .end local v20           #reply:Ljavax/btobex/HeaderSet;
    .end local v22           #starttimestamp:J
    .restart local p1
    :catchall_0
    move-exception v26

    :goto_6
    if-eqz v7, :cond_2

    if-nez v15, :cond_2

    .line 898
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    .line 899
    :catch_3
    move-exception v6

    .line 900
    .local v6, ei:Ljava/io/IOException;
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error while closing stream"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 899
    .end local v6           #ei:Ljava/io/IOException;
    .restart local v5       #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 900
    .restart local v6       #ei:Ljava/io/IOException;
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error while closing stream"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 899
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #ei:Ljava/io/IOException;
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    .line 900
    .restart local v6       #ei:Ljava/io/IOException;
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error while closing stream"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 896
    .end local v6           #ei:Ljava/io/IOException;
    :catchall_1
    move-exception v26

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 892
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private final sendFolderListingXml(ILjavax/btobex/Operation;[Ljava/io/File;)I
    .locals 12
    .parameter "type"
    .parameter "op"
    .parameter "files"

    .prologue
    .line 1135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1136
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v9, "<?xml version=\"1.0\"?>"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    const/16 v9, 0xd

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1138
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1139
    const-string v9, "<!DOCTYPE folder-listing SYSTEM \"obex-folder-listing.dtd\">"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const/16 v9, 0xd

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1141
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1142
    const-string v9, "<folder-listing version=\"1.0\">"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    const/16 v9, 0xd

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1144
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1149
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy MM dd HH:mm"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    const-string v3, ""

    .line 1152
    .local v3, name:Ljava/lang/String;
    const-string v4, ""

    .line 1153
    .local v4, permission:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, p3

    if-ge v2, v9, :cond_4

    .line 1155
    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1156
    const-string v3, "folder name"

    .line 1161
    :goto_1
    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1162
    const-string v4, "RW"

    .line 1169
    :cond_0
    :goto_2
    new-instance v0, Ljava/util/Date;

    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 1170
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, dateset:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v8, xmldateformat:Ljava/lang/StringBuffer;
    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1174
    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    const/4 v9, 0x3

    aget-object v9, v1, v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1177
    .local v7, timeset:[Ljava/lang/String;
    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1178
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1179
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1180
    const-string v9, "00Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1186
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p3, v2

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p3, v2

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " user-perm=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " modified=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    const/16 v9, 0xd

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1190
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1153
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1158
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateset:[Ljava/lang/String;
    .end local v7           #timeset:[Ljava/lang/String;
    .end local v8           #xmldateformat:Ljava/lang/StringBuffer;
    :cond_1
    const-string v3, "file name"

    goto/16 :goto_1

    .line 1163
    :cond_2
    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1164
    const-string v4, "R"

    goto/16 :goto_2

    .line 1165
    :cond_3
    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1166
    const-string v4, "W"

    goto/16 :goto_2

    .line 1192
    :cond_4
    const-string v9, "</folder-listing>"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    const/16 v9, 0xd

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1194
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->pushBytes(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v9

    return v9
.end method


# virtual methods
.method public onAbort(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 228
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z

    .line 230
    const/16 v0, 0xa0

    return v0
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 717
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x138c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 718
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 723
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 11
    .parameter "request"
    .parameter "reply"

    .prologue
    const/16 v8, 0xd0

    const/16 v10, 0x10

    const/16 v7, 0xc6

    .line 150
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 151
    .local v5, uuid:[B
    if-nez v5, :cond_0

    move v6, v7

    .line 195
    .end local v5           #uuid:[B
    :goto_0
    return v6

    .line 156
    .restart local v5       #uuid:[B
    :cond_0
    array-length v6, v5

    if-eq v6, v10, :cond_1

    .line 157
    const-string v6, "BluetoothFtpObexServer"

    const-string v9, "Wrong UUID length"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 158
    goto :goto_0

    .line 161
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v10, :cond_3

    .line 162
    aget-byte v6, v5, v2

    sget-object v9, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->FTP_TARGET:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_2

    .line 163
    const-string v6, "BluetoothFtpObexServer"

    const-string v9, "Wrong UUID"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 164
    goto :goto_0

    .line 161
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 168
    :cond_3
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 176
    .local v4, remote:[B
    if-eqz v4, :cond_4

    .line 179
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 190
    .local v3, msg:Landroid/os/Message;
    const/16 v6, 0x138d

    iput v6, v3, Landroid/os/Message;->what:I

    .line 191
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 193
    const-string v6, "/sdcard"

    iput-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    .line 195
    const/16 v6, 0xa0

    goto :goto_0

    .line 169
    .end local v2           #i:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #remote:[B
    .end local v5           #uuid:[B
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljava/io/IOException;
    const-string v6, "BluetoothFtpObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 171
    goto :goto_0

    .line 181
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v5       #uuid:[B
    :catch_1
    move-exception v1

    .line 182
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "BluetoothFtpObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 183
    goto/16 :goto_0
.end method

.method public onCopy(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 10
    .parameter "request"
    .parameter "reply"

    .prologue
    const/16 v7, 0xd0

    .line 247
    const-string v4, ""

    .line 248
    .local v4, name:Ljava/lang/String;
    const-string v2, ""

    .line 250
    .local v2, destname:Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 251
    const/16 v6, 0x15

    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 254
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v5, src:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 258
    const/16 v6, 0xc4

    .line 271
    .end local v1           #dest:Ljava/io/File;
    .end local v5           #src:Ljava/io/File;
    :goto_0
    return v6

    .line 261
    .restart local v1       #dest:Ljava/io/File;
    .restart local v5       #src:Ljava/io/File;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6, v5, v1}, Lcom/android/bluetooth/ftp/FileUtils;->copyFile(Landroid/os/Handler;Ljava/io/File;Ljava/io/File;)I

    move-result v6

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6, v5, v1}, Lcom/android/bluetooth/ftp/FileUtils;->copyFolders(Landroid/os/Handler;Ljava/io/File;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    :cond_2
    move v6, v7

    .line 266
    goto :goto_0

    .line 268
    .end local v1           #dest:Ljava/io/File;
    .end local v5           #src:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 269
    .local v3, e:Ljava/io/IOException;
    const-string v6, "BluetoothFtpObexServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCopy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 271
    goto :goto_0
.end method

.method public onDelete(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 8
    .parameter "request"
    .parameter "reply"

    .prologue
    const/4 v7, 0x1

    const/16 v5, 0xc1

    .line 355
    const-string v3, ""

    .line 357
    .local v3, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ftp/FileUtils;->checkMountedState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 358
    const-string v4, "BluetoothFtpObexServer"

    const-string v5, "SD card not Mounted"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/16 v4, 0xa4

    .line 409
    :goto_0
    return v4

    .line 368
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 370
    const-string v4, "."

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".."

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v5

    .line 373
    goto :goto_0

    .line 377
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, deleteFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v7, :cond_7

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 382
    goto :goto_0

    .line 385
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    iget-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v4, v1}, Lcom/android/bluetooth/ftp/FileUtils;->deleteDirectory(Landroid/os/Handler;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v5

    .line 388
    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    .line 393
    goto :goto_0

    .line 395
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    const/16 v5, 0x1391

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/bluetooth/ftp/FileUtils;->sendMessage(Landroid/os/Handler;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_6
    const/16 v4, 0xa0

    goto :goto_0

    .line 401
    :cond_7
    const/16 v4, 0xc4

    goto :goto_0

    .line 403
    .end local v1           #deleteFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 404
    .local v2, e:Ljava/io/IOException;
    const-string v4, "BluetoothFtpObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDelete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v4, 0xd0

    goto/16 :goto_0
.end method

.method public onDisconnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)V
    .locals 2
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 211
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/btobex/HeaderSet;->responseCode:I

    .line 213
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x138e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 216
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGet(Ljavax/btobex/Operation;)I
    .locals 17
    .parameter "op"

    .prologue
    .line 729
    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z

    .line 730
    const/4 v8, 0x0

    .line 731
    .local v8, request:Ljavax/btobex/HeaderSet;
    const-string v12, ""

    .line 732
    .local v12, type:Ljava/lang/String;
    const-string v7, ""

    .line 734
    .local v7, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ftp/FileUtils;->checkMountedState()Z

    move-result v14

    if-nez v14, :cond_0

    .line 735
    const-string v14, "BluetoothFtpObexServer"

    const-string v15, "SD card not Mounted"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/16 v14, 0xa4

    .line 851
    :goto_0
    return v14

    .line 740
    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v8

    .line 741
    const/16 v14, 0x42

    invoke-virtual {v8, v14}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 742
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 744
    const-string v14, "."

    invoke-static {v7, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, ".."

    invoke-static {v7, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_2

    .line 747
    :cond_1
    const/16 v14, 0xc6

    goto :goto_0

    .line 749
    :catch_0
    move-exception v3

    .line 750
    .local v3, e:Ljava/io/IOException;
    const-string v14, "BluetoothFtpObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onGet request headers "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/16 v14, 0xd0

    goto :goto_0

    .line 758
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    const/4 v13, 0x1

    .line 760
    .local v13, validName:Z
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 761
    const/4 v13, 0x0

    .line 766
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v14, v0

    iget-object v14, v14, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    invoke-virtual {v14}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 769
    const/16 v14, 0x97

    invoke-virtual {v8, v14}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    .line 770
    .local v10, srm:Ljava/lang/Byte;
    sget-object v14, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    if-ne v10, v14, :cond_4

    .line 772
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v14, v0

    iget-object v14, v14, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 787
    .end local v10           #srm:Ljava/lang/Byte;
    :goto_1
    if-eqz v12, :cond_e

    .line 793
    const-string v14, "x-obex/folder-listing"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 794
    if-nez v13, :cond_8

    .line 796
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    .local v9, rootfolder:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 798
    .local v5, files:[Ljava/io/File;
    if-eqz v5, :cond_7

    .line 799
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v14, v5

    if-ge v6, v14, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 775
    .end local v5           #files:[Ljava/io/File;
    .end local v6           #i:I
    .end local v9           #rootfolder:Ljava/io/File;
    .restart local v10       #srm:Ljava/lang/Byte;
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v14, v0

    iget-object v14, v14, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 782
    .end local v10           #srm:Ljava/lang/Byte;
    :catch_1
    move-exception v3

    .line 783
    .restart local v3       #e:Ljava/io/IOException;
    const-string v14, "BluetoothFtpObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onGet "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/16 v14, 0xd0

    goto/16 :goto_0

    .line 780
    .end local v3           #e:Ljava/io/IOException;
    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v14, v0

    iget-object v14, v14, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 801
    .restart local v5       #files:[Ljava/io/File;
    .restart local v6       #i:I
    .restart local v9       #rootfolder:Ljava/io/File;
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1, v5}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sendFolderListingXml(ILjavax/btobex/Operation;[Ljava/io/File;)I

    move-result v14

    goto/16 :goto_0

    .line 803
    .end local v6           #i:I
    :cond_7
    const-string v14, "BluetoothFtpObexServer"

    const-string v15, "error in listing files"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/16 v14, 0xd0

    goto/16 :goto_0

    .line 808
    .end local v5           #files:[Ljava/io/File;
    .end local v9           #rootfolder:Ljava/io/File;
    :cond_8
    const-string v14, "x-obex/folder-listing"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 809
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 813
    .local v2, currentfolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_b

    .line 817
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    .local v11, subFolder:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 819
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 820
    .restart local v5       #files:[Ljava/io/File;
    if-eqz v5, :cond_9

    .line 821
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1, v5}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sendFolderListingXml(ILjavax/btobex/Operation;[Ljava/io/File;)I

    move-result v14

    goto/16 :goto_0

    .line 823
    :cond_9
    const-string v14, "BluetoothFtpObexServer"

    const-string v15, "error in listing files"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/16 v14, 0xd0

    goto/16 :goto_0

    .line 827
    .end local v5           #files:[Ljava/io/File;
    :cond_a
    const-string v14, "BluetoothFtpObexServer"

    const-string v15, "ResponseCodes.OBEX_HTTP_NO_CONTENT"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/16 v14, 0xa4

    goto/16 :goto_0

    .line 833
    .end local v11           #subFolder:Ljava/io/File;
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 834
    .restart local v5       #files:[Ljava/io/File;
    if-eqz v5, :cond_d

    .line 835
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    array-length v14, v5

    if-ge v6, v14, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 837
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1, v5}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sendFolderListingXml(ILjavax/btobex/Operation;[Ljava/io/File;)I

    move-result v14

    goto/16 :goto_0

    .line 839
    .end local v6           #i:I
    :cond_d
    const-string v14, "BluetoothFtpObexServer"

    const-string v15, "error in listing files"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/16 v14, 0xd0

    goto/16 :goto_0

    .line 847
    .end local v2           #currentfolder:Ljava/io/File;
    .end local v5           #files:[Ljava/io/File;
    :cond_e
    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .local v4, fileinfo:Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sendFileContents(Ljavax/btobex/Operation;Ljava/io/File;)I

    move-result v14

    goto/16 :goto_0

    .line 851
    .end local v4           #fileinfo:Ljava/io/File;
    :cond_f
    const/16 v14, 0xc0

    goto/16 :goto_0
.end method

.method public onPut(Ljavax/btobex/Operation;)I
    .locals 30
    .parameter "op"

    .prologue
    .line 429
    const/16 v20, 0x0

    .line 431
    .local v20, request:Ljavax/btobex/HeaderSet;
    const-string v14, ""

    .line 432
    .local v14, name:Ljava/lang/String;
    const-string v8, ""

    .line 433
    .local v8, filetype:Ljava/lang/String;
    const/16 v15, 0xa0

    .line 435
    .local v15, obexResponse:I
    invoke-static {}, Lcom/android/bluetooth/ftp/FileUtils;->checkMountedState()Z

    move-result v26

    if-nez v26, :cond_0

    .line 436
    const-string v26, "BluetoothFtpObexServer"

    const-string v27, "SD card not Mounted"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/16 v26, 0xa4

    .line 601
    .end local p1
    :goto_0
    return v26

    .line 449
    .restart local p1
    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v20

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->extractLength(Ljavax/btobex/HeaderSet;)J

    move-result-wide v12

    .line 451
    .local v12, length:J
    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 453
    const-string v26, "."

    move-object/from16 v0, v26

    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string v26, ".."

    move-object/from16 v0, v26

    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 456
    :cond_1
    const/16 v26, 0xc6

    goto :goto_0

    .line 458
    :cond_2
    const/16 v26, 0x42

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 462
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 465
    const/16 v26, 0x97

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Byte;

    .line 466
    .local v21, srm:Ljava/lang/Byte;
    sget-object v26, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 468
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 479
    .end local v21           #srm:Ljava/lang/Byte;
    :goto_1
    const-wide/16 v26, 0x0

    cmp-long v26, v12, v26

    if-nez v26, :cond_3

    .line 482
    :cond_3
    if-eqz v14, :cond_4

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 484
    :cond_4
    const/16 v26, 0xc0

    goto/16 :goto_0

    .line 471
    .restart local v21       #srm:Ljava/lang/Byte;
    :cond_5
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 595
    .end local v12           #length:J
    .end local v21           #srm:Ljava/lang/Byte;
    .end local p1
    :catch_0
    move-exception v4

    .line 596
    .local v4, e:Ljava/io/IOException;
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onPut headers error "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/16 v26, 0xd0

    goto/16 :goto_0

    .line 476
    .end local v4           #e:Ljava/io/IOException;
    .restart local v12       #length:J
    .restart local p1
    :cond_6
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    goto :goto_1

    .line 486
    :cond_7
    invoke-static {v12, v13}, Lcom/android/bluetooth/ftp/FileUtils;->checkAvailableSpace(J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v26

    if-nez v26, :cond_8

    .line 488
    const/16 v26, 0xcd

    goto/16 :goto_0

    .line 490
    :cond_8
    const/4 v3, 0x0

    .line 491
    .local v3, buff_op_stream:Ljava/io/BufferedOutputStream;
    const/4 v11, 0x0

    .line 494
    .local v11, in_stream:Ljava/io/InputStream;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    .line 501
    const/16 v18, 0x0

    .line 502
    .local v18, positioninfile:I
    :try_start_3
    new-instance v7, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v7, fileinfo:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    .line 504
    .local v17, parentFile:Ljava/io/File;
    if-eqz v17, :cond_9

    .line 505
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->canWrite()Z

    move-result v26

    if-nez v26, :cond_a

    .line 507
    const/16 v26, 0xe1

    goto/16 :goto_0

    .line 495
    .end local v7           #fileinfo:Ljava/io/File;
    .end local v17           #parentFile:Ljava/io/File;
    .end local v18           #positioninfile:I
    :catch_1
    move-exception v5

    .line 496
    .local v5, e1:Ljava/io/IOException;
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onPut open input stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v26, 0xd0

    goto/16 :goto_0

    .line 510
    .end local v5           #e1:Ljava/io/IOException;
    .restart local v7       #fileinfo:Ljava/io/File;
    .restart local v17       #parentFile:Ljava/io/File;
    .restart local v18       #positioninfile:I
    :cond_9
    const-string v26, "BluetoothFtpObexServer"

    const-string v27, "Error! Not able to get parent file name"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/16 v26, 0xd0

    goto/16 :goto_0

    .line 514
    :cond_a
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 515
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v26

    if-eqz v26, :cond_e

    .line 516
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 517
    const/4 v7, 0x0

    .line 518
    new-instance v7, Ljava/io/File;

    .end local v7           #fileinfo:Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v7       #fileinfo:Ljava/io/File;
    :cond_b
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 527
    .local v6, fileOutputStream:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    .end local v3           #buff_op_stream:Ljava/io/BufferedOutputStream;
    const/16 v26, 0x4000

    move/from16 v0, v26

    invoke-direct {v3, v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 528
    .restart local v3       #buff_op_stream:Ljava/io/BufferedOutputStream;
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v16

    .line 529
    .local v16, outputBufferSize:I
    move/from16 v0, v16

    new-array v2, v0, [B

    .line 530
    .local v2, buff:[B
    const/16 v19, 0x0

    .line 531
    .local v19, readLength:I
    const-wide/16 v24, 0x0

    .line 532
    .local v24, timestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v22

    .line 534
    .local v22, starttimestamp:J
    :goto_2
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v26, v12

    if-eqz v26, :cond_c

    .line 535
    :try_start_4
    sget-boolean v26, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z

    if-eqz v26, :cond_f

    .line 536
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 537
    const/16 v26, 0x0

    sput-boolean v26, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->sIsAborted:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 573
    :cond_c
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 574
    .local v9, finishtimestamp:J
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Put Request TP analysis : Received  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes in "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v9, v22

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 576
    if-eqz v3, :cond_d

    .line 578
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 586
    :cond_d
    :try_start_7
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->closeStream(Ljava/io/InputStream;Ljavax/btobex/Operation;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v26

    if-nez v26, :cond_10

    .line 588
    const/16 v26, 0xd0

    goto/16 :goto_0

    .line 522
    .end local v2           #buff:[B
    .end local v6           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v9           #finishtimestamp:J
    .end local v16           #outputBufferSize:I
    .end local v19           #readLength:I
    .end local v22           #starttimestamp:J
    .end local v24           #timestamp:J
    :cond_e
    const/16 v26, 0xe1

    goto/16 :goto_0

    .line 540
    .restart local v2       #buff:[B
    .restart local v6       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v16       #outputBufferSize:I
    .restart local v19       #readLength:I
    .restart local v22       #starttimestamp:J
    .restart local v24       #timestamp:J
    :cond_f
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 542
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .line 545
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    .line 551
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 552
    add-int v18, v18, v19

    goto/16 :goto_2

    .line 561
    :catch_2
    move-exception v5

    .line 562
    .restart local v5       #e1:Ljava/io/IOException;
    :try_start_9
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onPut File receive"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    check-cast p1, Ljavax/btobex/ServerOperation;

    .end local p1
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput-boolean v0, v1, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 569
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 570
    const/16 v26, 0xc0

    goto/16 :goto_0

    .line 579
    .end local v5           #e1:Ljava/io/IOException;
    .restart local v9       #finishtimestamp:J
    .restart local p1
    :catch_3
    move-exception v4

    .line 580
    .restart local v4       #e:Ljava/io/IOException;
    const-string v26, "BluetoothFtpObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onPut close stream "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/16 v26, 0xd0

    goto/16 :goto_0

    .line 592
    .end local v4           #e:Ljava/io/IOException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x1390

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lcom/android/bluetooth/ftp/FileUtils;->sendMessage(Landroid/os/Handler;ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 601
    const/16 v26, 0xa0

    goto/16 :goto_0
.end method

.method public onRename(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 12
    .parameter "request"
    .parameter "reply"

    .prologue
    const/16 v8, 0xd0

    const/4 v9, 0x1

    .line 290
    const-string v4, ""

    .line 291
    .local v4, name:Ljava/lang/String;
    const-string v2, ""

    .line 293
    .local v2, destname:Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 294
    const/16 v6, 0x15

    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 296
    const-string v6, "."

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ".."

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 299
    :cond_0
    const/16 v6, 0xc6

    .line 334
    :goto_0
    return v6

    .line 302
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v5, src:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 306
    const/16 v6, 0xc4

    goto :goto_0

    .line 310
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->scanDirectory(Ljava/io/File;)V

    .line 312
    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-ne v6, v9, :cond_3

    .line 314
    iget-object v9, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    const/16 v10, 0x1393

    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->filenames:Ljava/util/List;

    iget-object v7, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->filenames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->types:Ljava/util/List;

    iget-object v11, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->types:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v9, v10, v6, v7}, Lcom/android/bluetooth/ftp/FileUtils;->sendCustomMessage(Landroid/os/Handler;I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 317
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->filenames:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 318
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->types:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 320
    invoke-direct {p0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->scanDirectory(Ljava/io/File;)V

    .line 322
    iget-object v9, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCallback:Landroid/os/Handler;

    const/16 v10, 0x1392

    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->filenames:Ljava/util/List;

    iget-object v7, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->filenames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->types:Ljava/util/List;

    iget-object v11, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->types:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v9, v10, v6, v7}, Lcom/android/bluetooth/ftp/FileUtils;->sendCustomMessage(Landroid/os/Handler;I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 325
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->filenames:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 326
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->types:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    const/16 v6, 0xa0

    goto/16 :goto_0

    :cond_3
    move v6, v8

    .line 330
    goto/16 :goto_0

    .line 331
    .end local v1           #dest:Ljava/io/File;
    .end local v5           #src:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 332
    .local v3, e:Ljava/io/IOException;
    const-string v6, "BluetoothFtpObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRename "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 334
    goto/16 :goto_0
.end method

.method public onSetPath(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;ZZ)I
    .locals 8
    .parameter "request"
    .parameter "reply"
    .parameter "backup"
    .parameter "create"

    .prologue
    const/16 v6, 0xa0

    .line 628
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    .line 629
    .local v1, current_path_tmp:Ljava/lang/String;
    const/4 v4, 0x0

    .line 631
    .local v4, tmp_path:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ftp/FileUtils;->checkMountedState()Z

    move-result v5

    if-nez v5, :cond_0

    .line 632
    const-string v5, "BluetoothFtpObexServer"

    const-string v6, "SD card not Mounted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/16 v5, 0xa4

    .line 706
    :goto_0
    return v5

    .line 637
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    const-string v5, "."

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".."

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 650
    :cond_1
    const/16 v5, 0xc6

    goto :goto_0

    .line 638
    :catch_0
    move-exception v2

    .line 639
    .local v2, e:Ljava/io/IOException;
    const-string v5, "BluetoothFtpObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSetPath  get header"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/16 v5, 0xd0

    goto :goto_0

    .line 661
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    if-eqz p3, :cond_4

    .line 662
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 663
    const/4 v5, 0x0

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 680
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1}, Lcom/android/bluetooth/ftp/FileUtils;->doesPathExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 683
    if-eqz p4, :cond_6

    .line 685
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    .local v3, filecreate:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 687
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    move v5, v6

    .line 688
    goto :goto_0

    .line 667
    .end local v3           #filecreate:Ljava/io/File;
    :cond_4
    if-nez v4, :cond_5

    .line 668
    const-string v1, "/sdcard"

    goto :goto_1

    .line 670
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 691
    :cond_6
    const/16 v5, 0xc4

    goto/16 :goto_0

    .line 697
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    .line 698
    const-string v1, "/sdcard"

    .line 701
    :cond_8
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;->mCurrentPath:Ljava/lang/String;

    move v5, v6

    .line 706
    goto/16 :goto_0
.end method
