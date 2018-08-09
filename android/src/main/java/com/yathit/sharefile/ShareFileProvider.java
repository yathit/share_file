package com.yathit.sharefile;

import android.support.v4.content.FileProvider;

/**
 * Providing a custom {@code FileProvider} prevents manifest {@code <provider>} name collisions.
 *
 */
public class ShareFileProvider extends FileProvider {
}
