package org.jumpmind.metl.core.runtime.component;

import static org.mockito.Matchers.anyString;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import org.jumpmind.metl.core.runtime.EntityData;
import org.jumpmind.metl.core.runtime.Message;
import org.jumpmind.metl.core.runtime.StartupMessage;
import org.jumpmind.metl.core.runtime.component.helpers.MessageBuilder;
import org.jumpmind.metl.core.runtime.component.helpers.PayloadBuilder;
import org.jumpmind.metl.core.runtime.resource.IResourceRuntime;
import org.jumpmind.metl.core.runtime.resource.IStreamable;
import org.jumpmind.properties.TypedProperties;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.powermock.modules.junit4.PowerMockRunner;

@RunWith(PowerMockRunner.class)
public class UnzipTest extends AbstractComponentRuntimeTestSupport<ArrayList<String>> {

	@Override
	public void testHandleStartupMessage() {
		setupHandle(true);
		setInputMessage(new StartupMessage());
		runHandle();
		assertHandle(0, getExpectedMessageMonitorSingle(1, 0, 0, 0));
	}

	@Override
	public void testHandleUnitOfWorkLastMessage() {
		setupHandle(true);
		setUnitOfWorkLastMessage(true);
		
		getInputMessage().setPayload(new ArrayList<EntityData>());
		
		runHandle();
		assertHandle(0, getExpectedMessageMonitorSingle(1, 0, 0, 0));
	}

	@Override
	public void testHandleNormal() {
		// Setup
		setupHandle(true);
		
		Message message1 = new MessageBuilder("step1")
				.setPayloadString(new PayloadBuilder()
					.addRow("test.zip")
					.buildString()).build();
		messages.clear();
		messages.add(new HandleParams(message1, true));
		
		// Expected
		ArrayList<String> expectedPayload = new PayloadBuilder()
				.addRow("").buildString();
				
		List<HandleMessageMonitor> expectedMonitors = new ArrayList<HandleMessageMonitor>();
		expectedMonitors.add(getExpectedTextMessageMonitor(1, 0, 0, 1, expectedPayload));
				
		runHandle();
		assertHandle(0, expectedMonitors);
	}

	@Override
	protected String getComponentId() {
		return UnZip.TYPE;
	}

	public void setupHandle(boolean fileExists) {
		super.setupHandle();
		((UnZip) spy).fileNames = new ArrayList<String>();
		
		IResourceRuntime mockResourceRuntime = mock(IResourceRuntime.class);
		IStreamable mockStreamable = mock(IStreamable.class);
		TypedProperties mockTypedProperties = mock(TypedProperties.class);
		File mockFile = mock(File.class);
		ZipFile mockZipFile = mock(ZipFile.class);
		ZipEntry mockZipEntry = mock(ZipEntry.class);
		ZipEntryIterator iterator = new ZipEntryIterator();
		List<ZipEntry> entries = new ArrayList<ZipEntry>();
		entries.add(mockZipEntry);
		entries.add(mockZipEntry);
		entries.add(mockZipEntry);
		
		iterator.setEntries(entries);
		
		when(((UnZip) spy).getResourceRuntime()).thenReturn(mockResourceRuntime);
		when(mockResourceRuntime.getResourceRuntimeSettings()).thenReturn(mockTypedProperties);
		when(mockTypedProperties.get(anyString())).thenReturn("localFilePath");
		
		when(((UnZip) spy).getResourceReference()).thenReturn(mockStreamable);
		when(((UnZip) spy).getNewFile(anyString())).thenReturn(mockFile);
		when(((UnZip) spy).getNewFile(anyString(), anyString())).thenReturn(mockFile);
		try {
			when(((UnZip) spy).getNewZipFile(Mockito.any(File.class))).thenReturn(mockZipFile);
		}
		catch(IOException ioe) {
		}
		when(mockFile.getAbsolutePath()).thenReturn("fileAbsolutePath");
		when(mockFile.exists()).thenReturn(fileExists);
		
	}
	
	class ZipEntryIterator implements Enumeration<ZipEntry>, Iterator<ZipEntry> {
		private int counter = 0;
		private List<ZipEntry> entries;
		
		@Override
		public boolean hasNext() {
			return counter < entries.size();
		}

		@Override
		public ZipEntry next() {
			return entries.get(counter);
		}

		@Override
		public boolean hasMoreElements() {
			return counter < entries.size();
		}

		@Override
		public ZipEntry nextElement() {
			return entries.get(counter);
		}

		List<ZipEntry> getEntries() {
			return entries;
		}

		void setEntries(List<ZipEntry> entries) {
			this.entries = entries;
		}
	
	}
}
